# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseImportsFast.Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ef54dfcae1459216929a50bd4317934c9e37c47",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ef54dfcae1459216929a50bd4317934c9e37c47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean.json)

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
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state--f3e127600afa8fa3ddc20afd.md) | 19 | `declaration-track:f3e127600afa8fa3ddc20afd949f0509b5754112f7b8bb0eeff9f99a8523d100` |
| 2 | `def` | [Parser](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/parser--165ea564b18d53f17887beee.md) | 31 | `declaration-track:165ea564b18d53f17887beee4e5c16c2ead6fc57385c3d969645c5ad9b8dd798` |
| 3 | `def` | [skip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/skip--b1787c6d2eb00ba331d80bcf.md) | 33 | `declaration-track:b1787c6d2eb00ba331d80bcf3d9ffec567b9f1d5e7822c6469a1413069f95d2c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/instance--b0c10171f6ee60d027409bf7.md) | 35 | `declaration-track:b0c10171f6ee60d027409bf7025f6671a08f95705f0994fd471fa968b956166c` |
| 5 | `def` | [State.setPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-setpos--6f37aaa456a3fd3d2497accd.md) | 37 | `declaration-track:6f37aaa456a3fd3d2497accd73083c764df4401be4247de23cf33d6dc16d8fe4` |
| 6 | `def` | [State.mkError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-mkerror--5a95b0d27e3000388979a20e.md) | 40 | `declaration-track:5a95b0d27e3000388979a20e4a4ca9da7dda6547412fd1c7dfaef89feecc129b` |
| 7 | `def` | [State.mkEOIError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-mkeoierror--6dd478411489e434ab0e287d.md) | 43 | `declaration-track:6dd478411489e434ab0e287d6494c2a999b6c61c6fa318598283168355eacae1` |
| 8 | `def` | [State.clearError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-clearerror--e5f0521dbe988e9191f1c806.md) | 46 | `declaration-track:e5f0521dbe988e9191f1c806e35b855e8722bbe897dd982cdd5a7c3ca360a5a6` |
| 9 | `def` | [State.next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-next--902202b3024cd9d1f8bacfac.md) | 49 | `declaration-track:902202b3024cd9d1f8bacfac53f458c96c4055e3d1eca3239dde4ade151ec9fa` |
| 10 | `def` | [State.next'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-next--5fb8bce7c453f9604d1a16a5.md) | 52 | `declaration-track:5fb8bce7c453f9604d1a16a5b2e883001d2281de3ca268edc2bba7e72f1536db` |
| 11 | `def` | [finishCommentBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/finishcommentblock--ad2d6a2045a8cfe9ec86101b.md) | 55 | `declaration-track:ad2d6a2045a8cfe9ec86101bbc304fdc83152bf80b69510d4bb944a844415c3b` |
| 12 | `def` | [takeUntil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/takeuntil--3096a64fa69ee57b7a60b12b.md) | 81 | `declaration-track:3096a64fa69ee57b7a60b12b2ebbda8d9c818270bde8d22bf33c0ba066f89417` |
| 13 | `def` | [takeWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/takewhile--9702426a4bcefe8e768bf1ca.md) | 87 | `declaration-track:9702426a4bcefe8e768bf1ca553fb84ce2ec991eae0332fae632e4841236337b` |
| 14 | `def` | [andthen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/andthen--b6f5cafd239289015b49e0d7.md) | 90 | `declaration-track:b6f5cafd239289015b49e0d71a25b8cc245c94f8aa9f2ed99d5610a8261f1553` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/instance--e4cbfd97921dafa3b0f4d796.md) | 94 | `declaration-track:e4cbfd97921dafa3b0f4d7966007c8d23165ef476c4c7ddfcbe13b448b6aa0e4` |
| 16 | `def` | [whitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/whitespace--14d88fa59c2647fc4f75be23.md) | 97 | `declaration-track:14d88fa59c2647fc4f75be2335651b67507c7c3f77698d22f472a31d88cb0877` |
| 17 | `def` | [keywordCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/keywordcore--b5544f8c84ac5ca0d4381acc.md) | 121 | `declaration-track:b5544f8c84ac5ca0d4381acc9ae9978798aa3f6e8abe986d6ea0832cc95441c7` |
| 18 | `def` | [keyword](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/keyword--c90d403076403445f44e743e.md) | 136 | `declaration-track:c90d403076403445f44e743efeda12271b2d4b98e1730f280e45c61cdde1d7ab` |
| 19 | `def` | [isIdCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/isidcont--b019f5f133b949d54f8896b1.md) | 139 | `declaration-track:b019f5f133b949d54f8896b19cc65df79ddfd085af0b83a81f3c38fd855af51c` |
| 20 | `def` | [State.pushImport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/state-pushimport--2868e82e5a661182441251db.md) | 152 | `declaration-track:2868e82e5a661182441251db7f53fdfecc30ace5fbe46219bb661ff68c723034` |
| 21 | `def` | [isIdRestCold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/isidrestcold--4e7a46cd6b633c1191f74a57.md) | 155 | `declaration-track:4e7a46cd6b633c1191f74a57af96f7a789d516b58d02219068866eacacf33a19` |
| 22 | `def` | [isIdRestFast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/isidrestfast--bc44753f5762bea5791a66b3.md) | 158 | `declaration-track:bc44753f5762bea5791a66b37da1dc33914aee03896a1791e1f3df571090cdc6` |
| 23 | `def` | [moduleIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/moduleident--44e4fbf0b0bfacd46571f421.md) | 161 | `declaration-track:44e4fbf0b0bfacd46571f42158dc66424769762129b8d3c54bfa4c08a728ab49` |
| 24 | `def` | [atomic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/atomic--a97518f2e1cca631d64db408.md) | 200 | `declaration-track:a97518f2e1cca631d64db4088814ab19c394088df2c2be3921fd83fba8479946` |
| 25 | `def` | [manyImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/manyimports--44add9e29412bcb1609adc0b.md) | 205 | `declaration-track:44add9e29412bcb1609adc0bdc5a7f97dcd39171df370ae4f1031d4a673eb799` |
| 26 | `def` | [setIsModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/setismodule--c321c355dee2b8fe401331ba.md) | 216 | `declaration-track:c321c355dee2b8fe401331baeb39acdaf80bf44c3189f8510b11a087d12286eb` |
| 27 | `def` | [setMeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/setmeta--d0c9d8fbe7194d0e9c0abc06.md) | 219 | `declaration-track:d0c9d8fbe7194d0e9c0abc06236e415c67a28c93d342e40f85770c7eec5fda66` |
| 28 | `def` | [setExported](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/setexported--de1425e32d26b89c00b8a66b.md) | 225 | `declaration-track:de1425e32d26b89c00b8a66b613a678760880cf7877a1c92d80f679220c51ec2` |
| 29 | `def` | [setImportAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/setimportall--87a9dfc6ddc6f9a48a52b36e.md) | 231 | `declaration-track:87a9dfc6ddc6f9a48a52b36ef4921fdd1366c0e43451a961282512d63c744f09` |
| 30 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/main--c62f1ed7e2c2115fd5143d9f.md) | 237 | `declaration-track:c62f1ed7e2c2115fd5143d9ff4b5a0fc555006cb8fbec553c86db69176c3e07f` |
| 31 | `def` | [parseImports'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/parseimports--2cc9bce558e6d3d0c1b0ca93.md) | 251 | `declaration-track:2cc9bce558e6d3d0c1b0ca93193277db3fede88aab15d0b424040ae9d143a9aa` |
| 32 | `structure` | [PrintImportResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/printimportresult--76d3874dff8576fffd25211a.md) | 259 | `declaration-track:76d3874dff8576fffd25211ae31a876ae0507f9e7f17ef80c883875e8c837b98` |
| 33 | `structure` | [PrintImportsResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/printimportsresult--b3a48e4c058311273d496f2c.md) | 264 | `declaration-track:b3a48e4c058311273d496f2cac6ee8f785ec6228a56df02fe76ac20ddfca51a4` |
| 34 | `def` | [printImportsJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/declarations/printimportsjson--01bfbdf7483444aebf28c43d.md) | 268 | `declaration-track:01bfbdf7483444aebf28c43da4e1716529fde6b457d325a7289706eab0adfdbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
