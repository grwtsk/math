# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a3b68089070640e92b23478c261cabde3f0d218",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a3b68089070640e92b23478c261cabde3f0d218`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Parser.Term` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Attribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/attribute--77b480be133460c795f3336d.md) | 25 | `declaration-track:77b480be133460c795f3336dd957329cbb2f613ff404874efdd6273d9c54ffdb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/instance--f0a10f2a21860ec1a56737e8.md) | 31 | `declaration-track:f0a10f2a21860ec1a56737e835904c86b1b3fde6f74474df7f495f21ca715e8f` |
| 3 | `def` | [toAttributeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/toattributekind--64be7dc4f412b27db3b7e5cc.md) | 44 | `declaration-track:64be7dc4f412b27db3b7e5cc0f28d2d220fc6a5ecf6f2a2bc1ad7ee90e944bb3` |
| 4 | `def` | [mkAttrKindGlobal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/mkattrkindglobal--72020b3bd8cca9d8a6a343e0.md) | 54 | `declaration-track:72020b3bd8cca9d8a6a343e0367b486db00ac0ca0636f1867f48a3b19a5d7ac0` |
| 5 | `def` | [elabAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/elabattr--23deb458bf739b616d504d8b.md) | 57 | `declaration-track:23deb458bf739b616d504d8b26ab3b2dc12873380e2ee0659869e5b603d9116c` |
| 6 | `def` | [elabAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/elabattrs--af5ff6743ec682fc4709bf92.md) | 87 | `declaration-track:af5ff6743ec682fc4709bf922cd9ee1b52155e3651f63c87b52ebbc5f1d3f63a` |
| 7 | `def` | [elabDeclAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/declarations/elabdeclattrs--0c5f0be34e013128ccebd667.md) | 97 | `declaration-track:0c5f0be34e013128ccebd667469342074015d8a4428219c2e230815895906548` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
