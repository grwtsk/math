# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternAttr.Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a570a9100b73444d65e23581f6bd96e4176023",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a570a9100b73444d65e23581f6bd96e4176023`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExternEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/externentry--e21ce0f2343fe2c284084ad6.md) | 27 | `declaration-track:e21ce0f2343fe2c284084ad62e57ece2c76b4957ea4190a18330ea8b209acb28` |
| 2 | `structure` | [ExternAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/externattrdata--0dc826ff04ca5ea7d3b9671f.md) | 47 | `declaration-track:0dc826ff04ca5ea7d3b9671f54b6958731073fa368599a72e9102c92a0a3bdd8` |
| 3 | `def` | [syntaxToExternAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/syntaxtoexternattrdata--b84e3785b19d816ccea484c0.md) | 53 | `declaration-track:b84e3785b19d816ccea484c0c2f892cd8b733faf67e0d93dd4bd4504b830d36b` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/builtin-initialize--50cd6a374470a967a9de84c7.md) | 69 | `declaration-track:50cd6a374470a967a9de84c7a1f4669dbc855b9f60205b8fd7353818bd952f83` |
| 5 | `def` | [getExternAttrData?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/getexternattrdata--9dbaee78901192681d35f487.md) | 83 | `declaration-track:9dbaee78901192681d35f4871e74106a8bc5c5d0afcf3c7121197bc3e2b42448` |
| 6 | `def` | [parseOptNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/parseoptnum--d3774d2c009b6bd95c940a8e.md) | 86 | `declaration-track:d3774d2c009b6bd95c940a8e76de741f8128780130302ad55db0d8f0b83a0a5f` |
| 7 | `def` | [expandExternPatternAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/expandexternpatternaux--ebf78043bc207593a357513e.md) | 96 | `declaration-track:ebf78043bc207593a357513e99831ba667ca9e4af12aec0362dfdcba8831abd7` |
| 8 | `def` | [expandExternPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/expandexternpattern--b5dd5ffe9fe79469bf3f9eea.md) | 108 | `declaration-track:b5dd5ffe9fe79469bf3f9eea0017c37fa7aac83814bc6c8aa0ac5538c8c33b04` |
| 9 | `def` | [mkSimpleFnCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/mksimplefncall--431d4ee706212694cfe0e5c7.md) | 111 | `declaration-track:431d4ee706212694cfe0e5c7aa80f8b0f234e061a88238341550a2d8c0e59d01` |
| 10 | `def` | [ExternEntry.backend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/externentry-backend--756bc637000f459fb3f7bf44.md) | 114 | `declaration-track:756bc637000f459fb3f7bf4418d93aae74c5f80e9080f0af457071a4106921e8` |
| 11 | `def` | [getExternEntryForAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/getexternentryforaux--808646f02a1cf8f5ab64e8ab.md) | 120 | `declaration-track:808646f02a1cf8f5ab64e8abb47cc7e523c729e327cf899db1694f0a4dd29e05` |
| 12 | `def` | [getExternEntryFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/getexternentryfor--80dc9ee743b4d6e0d34a6113.md) | 124 | `declaration-track:80dc9ee743b4d6e0d34a61139acf7a6cc41b4f08650dfc9aeda71dc136f420a9` |
| 13 | `def` | [isExtern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/isextern--91cf9f0178a5e69f2ed6451a.md) | 127 | `declaration-track:91cf9f0178a5e69f2ed6451a229389c45255fa4b2171cebadfd680ad2fba24bd` |
| 14 | `def` | [isExternC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/isexternc--a9b910d36ba02088bb2b1c8c.md) | 132 | `declaration-track:a9b910d36ba02088bb2b1c8cbc30c0c7976ee2cb706e0bce99cf2b7dab9b6c60` |
| 15 | `def` | [getExternNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/declarations/getexternnamefor--4c7759f40df535a027e29b7f.md) | 137 | `declaration-track:4c7759f40df535a027e29b7f6e441a429d4f2641f68cbb560ba377d3dd9da18c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
