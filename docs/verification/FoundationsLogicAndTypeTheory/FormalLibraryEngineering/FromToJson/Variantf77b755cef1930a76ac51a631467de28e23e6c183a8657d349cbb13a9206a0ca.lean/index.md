# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkToJsonHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonheader--9cdc610318c03b9dee92e99e.md) | 20 | `declaration-track:9cdc610318c03b9dee92e99e63e5d26126ebfd6483f56e570a5d38f4afb38f54` |
| 2 | `def` | [mkFromJsonHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonheader--c101188dae71df80947a9e20.md) | 23 | `declaration-track:c101188dae71df80947a9e20a22c5ccdcc346acf602a7283e382c6f2b90793fc` |
| 3 | `def` | [mkJsonField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkjsonfield--b807f03a0729ba8ea861fb35.md) | 29 | `declaration-track:b807f03a0729ba8ea861fb35e128dea7c1fefedfb91820f3e2389ce149ff4d18` |
| 4 | `def` | [mkToJsonBodyForStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonbodyforstruct--ce91122fc7d840aa4e85854b.md) | 34 | `declaration-track:ce91122fc7d840aa4e85854bc25fb1f1344988537a659088fe5f7a5ae75172da` |
| 5 | `def` | [mkToJsonBodyForInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonbodyforinduct--fac7c04393add81f8d9aabff.md) | 43 | `declaration-track:fac7c04393add81f8d9aabff0178ca0770e60ea4f5759a6dde611c0a88f3320f` |
| 6 | `def` | [mkFromJsonBodyForStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonbodyforstruct--48176e591041056364c2bf36.md) | 99 | `declaration-track:48176e591041056364c2bf36f92cd82206edaacc4a19bfb4a3e436cfb3eb4637` |
| 7 | `def` | [mkFromJsonBodyForInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonbodyforinduct--8471ad747694ce82a20d7420.md) | 111 | `declaration-track:8471ad747694ce82a20d74202139c6d74f84c477f1b4e97f6a4c6306db919674` |
| 8 | `def` | [mkToJsonBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonbody--1cf53a251899b3279354cdd7.md) | 161 | `declaration-track:1cf53a251899b3279354cdd790453ae2886cac676c54eabff69fd51c54b109c9` |
| 9 | `def` | [mkToJsonAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonauxfunction--f1d399374c2443967bf055ba.md) | 168 | `declaration-track:f1d399374c2443967bf055ba70d0514f68703b5e497b899240fa3ac4e078fd81` |
| 10 | `def` | [mkFromJsonBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonbody--a45cda35ff9534e1dabcff2b.md) | 182 | `declaration-track:a45cda35ff9534e1dabcff2bdb2d756ffa99dce08c69226849bc46e3f422c482` |
| 11 | `def` | [mkFromJsonAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonauxfunction--9da87d0fb9b535d7b4238af0.md) | 189 | `declaration-track:9da87d0fb9b535d7b4238af0e880cb7d8d50af433c4bbe36f5c3ed30c0267b25` |
| 12 | `def` | [mkToJsonMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsonmutualblock--6d7072474b9bda81f237de6e.md) | 205 | `declaration-track:6d7072474b9bda81f237de6e86975d24cf84c3f9261437d984fbd039756e85e8` |
| 13 | `def` | [mkFromJsonMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsonmutualblock--0dc783884597355686f71f1d.md) | 213 | `declaration-track:0dc783884597355686f71f1d0393549a7ec57ed42c1902f3952185b85760e3cc` |
| 14 | `def` | [mkToJsonInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsoninstance--f8cc1bc7d74d0f1982e5b14b.md) | 221 | `declaration-track:f8cc1bc7d74d0f1982e5b14be0b85c8abe78e2744c5e02b4d94d6d93b56df2ef` |
| 15 | `def` | [mkFromJsonInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsoninstance--98d335a7823469b265b8c1a7.md) | 227 | `declaration-track:98d335a7823469b265b8c1a7ccc67553bfdd23bc1d59a6a19e4ad51e20181e2d` |
| 16 | `def` | [mkToJsonInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mktojsoninstancehandler--a285049c37a71f8b398f48a9.md) | 233 | `declaration-track:a285049c37a71f8b398f48a926d5ab1b319ccf4bd17aedc9b90bccda8c2bae1c` |
| 17 | `def` | [mkFromJsonInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/mkfromjsoninstancehandler--2c36a8632c917b3243b2ca25.md) | 242 | `declaration-track:2c36a8632c917b3243b2ca253a943324ff20e63f4055a3b1561dd135801c4c88` |
| 18 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/declarations/builtin-initialize--0357ceafe564ed3e9cad94b9.md) | 251 | `declaration-track:0357ceafe564ed3e9cad94b9c6cc2f5433c05dc9c8e0498ede5e0fa5f4e5021c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
