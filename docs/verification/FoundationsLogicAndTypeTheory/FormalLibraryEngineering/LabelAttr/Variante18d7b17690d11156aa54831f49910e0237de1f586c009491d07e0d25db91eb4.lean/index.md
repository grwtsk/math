# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6b5fcba679b043bee64d364dc24d34607baac5d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6b5fcba679b043bee64d364dc24d34607baac5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ScopedEnvExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.DocString` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LabelExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/labelextension--79bb488ed8f028f0b259e914.md) | 32 | `declaration-track:79bb488ed8f028f0b259e914f187cd79dd47cdafafe4b2338bd7c4ab4fdc26bb` |
| 2 | `abbrev` | [LabelExtensionMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/labelextensionmap--4f2a86e2693903bc4374b0ee.md) | 35 | `declaration-track:4f2a86e2693903bc4374b0ee2f769e6f79bb360a9c7919be0f9fd6af27cf8de2` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/initialize--2751786045882e145f0f0c11.md) | 38 | `declaration-track:2751786045882e145f0f0c110ef0ae83e67692b38e682702dc36bf48f7b0b590` |
| 4 | `def` | [mkLabelExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/mklabelext--db3ea045a066b31a5f543d0a.md) | 41 | `declaration-track:db3ea045a066b31a5f543d0a7628cc0f13019b60eeaa799960a13421373c05a2` |
| 5 | `def` | [mkLabelAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/mklabelattr--c4b736d5c01c10784e6bf234.md) | 49 | `declaration-track:c4b736d5c01c10784e6bf23478fc467ca5e6092aabd88566a97083367625274c` |
| 6 | `def` | [registerLabelAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/registerlabelattr--4bf64b452385f1bc799fe632.md) | 69 | `declaration-track:4bf64b452385f1bc799fe632ba0e68fbf5226f25f724e0434dbb254116d09c4f` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/macro--b8d97ccb76fb333ded686d86.md) | 80 | `declaration-track:b8d97ccb76fb333ded686d864186ec319e8bbde0735ca38041678ebea28e9af0` |
| 8 | `def` | [labelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttr/Variante18d7b17690d11156aa54831f49910e0237de1f586c009491d07e0d25db91eb4.lean/declarations/labelled--3c2c85a2ecc6f6917e02459f.md) | 92 | `declaration-track:3c2c85a2ecc6f6917e02459fc7908ad58b101ccca9f9608d21046cf70cae542d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
