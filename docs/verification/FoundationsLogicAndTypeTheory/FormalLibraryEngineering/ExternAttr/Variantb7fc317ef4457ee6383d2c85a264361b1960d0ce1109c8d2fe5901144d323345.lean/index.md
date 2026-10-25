# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternAttr.Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cc1a5ec19ee5238e699c146ffc3428536ef0f51",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cc1a5ec19ee5238e699c146ffc3428536ef0f51`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExternEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/externentry--b6c49b4c14703d80ad00a0b3.md) | 19 | `declaration-track:b6c49b4c14703d80ad00a0b38625bdd59e9b917ed802066a307aa095a203f49f` |
| 2 | `structure` | [ExternAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/externattrdata--b0a6e9ba59f0163bb44569a5.md) | 39 | `declaration-track:b0a6e9ba59f0163bb44569a535834d73c131c9c4a7b078d9285b70a0d22c09f2` |
| 3 | `def` | [syntaxToExternAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/syntaxtoexternattrdata--dcd4a69ebbaa60f00bf3ad0f.md) | 45 | `declaration-track:dcd4a69ebbaa60f00bf3ad0f075c744f57684f3dfc714ed2504b858f67cd5fab` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/builtin-initialize--0168a2dbeb21dd19d225e590.md) | 61 | `declaration-track:0168a2dbeb21dd19d225e590ced7aefb4540bf1f1c1b4d6d735d966b3fad90ff` |
| 5 | `def` | [getExternAttrData?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/getexternattrdata--503ed1e697eb7646b50c4522.md) | 75 | `declaration-track:503ed1e697eb7646b50c4522c1e52c5e2b04c8b5b343ac9ba60a146601eda4e2` |
| 6 | `def` | [parseOptNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/parseoptnum--19fc740397e5f88064501f09.md) | 78 | `declaration-track:19fc740397e5f88064501f09b97d0d19a7eb84327a7da6841f4c24aa1cc01bb1` |
| 7 | `def` | [expandExternPatternAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/expandexternpatternaux--8598edcccdd14714a8d62425.md) | 88 | `declaration-track:8598edcccdd14714a8d6242551956cfe46c36e668b63089a1c2d3daabdf2baaa` |
| 8 | `def` | [expandExternPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/expandexternpattern--e15f4ddbbaac6fcd126b907d.md) | 100 | `declaration-track:e15f4ddbbaac6fcd126b907de97fbe4a9b6045dedb046ac86d414d5b177a6b5a` |
| 9 | `def` | [mkSimpleFnCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/mksimplefncall--1e1fa7b1644e0d688701be07.md) | 103 | `declaration-track:1e1fa7b1644e0d688701be074f51c992227b4ef0e2780f4f6550dd17b833f1ac` |
| 10 | `def` | [ExternEntry.backend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/externentry-backend--9fffb6a2caf0c11bb4cef900.md) | 106 | `declaration-track:9fffb6a2caf0c11bb4cef900b475169e7d3447ba1672c5e62586792008a41d64` |
| 11 | `def` | [getExternEntryForAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/getexternentryforaux--17349da2983317f26b93476e.md) | 112 | `declaration-track:17349da2983317f26b93476e93bb055fbab29682977b72c94a680046eaec4f46` |
| 12 | `def` | [getExternEntryFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/getexternentryfor--1f494df45975b4b10abd660a.md) | 116 | `declaration-track:1f494df45975b4b10abd660a0112b47a7d10372413de768bf492647f9127cc62` |
| 13 | `def` | [isExtern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/isextern--b23bc430d816679d9920a45d.md) | 119 | `declaration-track:b23bc430d816679d9920a45df7748e59d156e5678dfa7cd1140a4ebaf6a2b9f5` |
| 14 | `def` | [isExternC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/isexternc--d6b038d6bf38246359b73a01.md) | 124 | `declaration-track:d6b038d6bf38246359b73a01d98561dbd28330d5aa4dcb89e31a2cfc372a3db6` |
| 15 | `def` | [getExternNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/declarations/getexternnamefor--258b40bc8e4d9d04ddd0a639.md) | 129 | `declaration-track:258b40bc8e4d9d04ddd0a63921f7de3dac478b4a9d7f21f1720e436daac77c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
