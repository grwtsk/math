# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reader.Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7220bcc3dc63f2d453c541a32247f9f4744359e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7220bcc3dc63f2d453c541a32247f9f4744359e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean.json)

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
| 1 | `inductive` | [Reader.BodyState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/reader-bodystate--3b8d68f88da23acee203d124.md) | 42 | `declaration-track:3b8d68f88da23acee203d1241fe4603d571749a91b423977052c45e7f4b4de9b` |
| 2 | `inductive` | [Reader.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/reader-state--d9f50d3dadf2288bfb827b30.md) | 67 | `declaration-track:d9f50d3dadf2288bfb827b30a011e3500b86b9ffdbabea7b25f4ef9dcbe4118b` |
| 3 | `structure` | [Reader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/reader--1ca5390497b6bfd720ad1dbe.md) | 112 | `declaration-track:1ca5390497b6bfd720ad1dbee0709bb04cc0f272229134f57a5fafbfbd010906` |
| 4 | `def` | [isClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/isclosed--874ec120afb0308c7dfe1d2c.md) | 155 | `declaration-track:874ec120afb0308c7dfe1d2c3e3a201f48aee91c426f0a112b6b8c407eb3d4fb` |
| 5 | `def` | [isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/iscomplete--5e53a73999d245de763eef36.md) | 164 | `declaration-track:5e53a73999d245de763eef36c91a4ae81e3020a0f906de95697aefdf7ce5c466` |
| 6 | `def` | [hasFailed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/hasfailed--6108fee1027c71b0e3e4a4d7.md) | 173 | `declaration-track:6108fee1027c71b0e3e4a4d7256c559984a3b07102d2d641de5ab9c8daa37006` |
| 7 | `def` | [feed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/feed--5338af1a9277561ef49f5a94.md) | 184 | `declaration-track:5338af1a9277561ef49f5a945cf3cef18a4411352eec94155993fc147dac24c4` |
| 8 | `def` | [setInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/setinput--5613bf0e9c2d1e70b716700d.md) | 194 | `declaration-track:5613bf0e9c2d1e70b716700d8fa97f444ccff624741475c1d14b6de2451cb6d3` |
| 9 | `def` | [setMessageHead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/setmessagehead--8c1d7232e042333b3a25ba94.md) | 201 | `declaration-track:8c1d7232e042333b3a25ba94dfeecfda897e1e9868bf028052f83b8e5d64efba` |
| 10 | `def` | [addHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/addheader--38d1437be1a0a960ac9366cd.md) | 208 | `declaration-track:38d1437be1a0a960ac9366cdf8d968f3ab332ae1f54dd71690969828fb522e07` |
| 11 | `def` | [close](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/close--745cc0f5afbbe57eeaa47248.md) | 216 | `declaration-track:745cc0f5afbbe57eeaa47248b5a48b914adaf60e83581f819538b3514b1b39d9` |
| 12 | `def` | [markComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/markcomplete--ff7a8a01fec622bdd6c972b3.md) | 223 | `declaration-track:ff7a8a01fec622bdd6c972b35d4dc6db43ae48ed9e3c46fe8ace58a281af7c59` |
| 13 | `def` | [fail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/fail--89c9c4638b2adae4c6587eb0.md) | 232 | `declaration-track:89c9c4638b2adae4c6587eb0633cab81d221328474a87dc4881997bb689f9f6b` |
| 14 | `def` | [reset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/reset--a40398816210ed6462f4a050.md) | 239 | `declaration-track:a40398816210ed6462f4a0500112cc2c9fe4989174283817f472c52a41ad73f2` |
| 15 | `def` | [needsMoreInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/needsmoreinput--20f975a7fbdea7a7ee29511a.md) | 250 | `declaration-track:20f975a7fbdea7a7ee29511a2b2f65033916f269a1c5b358aa057204bd97d79d` |
| 16 | `def` | [getError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/geterror--9d3798b15a69a28946292285.md) | 260 | `declaration-track:9d3798b15a69a28946292285457a1a03e1d980404df9e5b63bac0331b19e2695` |
| 17 | `def` | [remainingBytes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/remainingbytes--0655cdb7afc4842cc57810f6.md) | 269 | `declaration-track:0655cdb7afc4842cc57810f67fde1cbeb74c7cd1a187d9d26adf6218090f0071` |
| 18 | `def` | [advance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/advance--caa5e6d4a49c812fd55c2837.md) | 276 | `declaration-track:caa5e6d4a49c812fd55c2837fafdfb5c5512dd41bb29c11c0b9d44f985480758` |
| 19 | `def` | [startHeaders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/startheaders--ae0df126c296b9146e149d31.md) | 283 | `declaration-track:ae0df126c296b9146e149d31a6031a64ff47f4ae9d2d081d4a29775c2c61c7b8` |
| 20 | `def` | [addBodyBytes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/addbodybytes--34c0bb568b4a10df8b5737d2.md) | 290 | `declaration-track:34c0bb568b4a10df8b5737d2674adffc9948ada808f244b5c281d76fcd7ad79c` |
| 21 | `def` | [addHeaderBytes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/addheaderbytes--9bb76426a5aa51c206b9767b.md) | 297 | `declaration-track:9bb76426a5aa51c206b9767bf9e020fb0ad8be018dbdef653f58df8adafffc15` |
| 22 | `def` | [startFixedBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/startfixedbody--b61b615dea9d5fa0aca45da3.md) | 304 | `declaration-track:b61b615dea9d5fa0aca45da330e5c5f42f8617e55cc996b95e9dd36a43d31fb4` |
| 23 | `def` | [startChunkedBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/startchunkedbody--26ccd95f3c48cb570c9d49e0.md) | 311 | `declaration-track:26ccd95f3c48cb570c9d49e04b7930adbc423cc112af0079985366af3b292bb7` |
| 24 | `def` | [markNoMoreInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/marknomoreinput--ee1bd198f23eb138e7c5df94.md) | 318 | `declaration-track:ee1bd198f23eb138e7c5df949af377c817c20c722a46d2e2bc2c83de4f54368b` |
| 25 | `def` | [shouldKeepAlive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/declarations/shouldkeepalive--bb83597d4a53f2fb6ca2eb36.md) | 324 | `declaration-track:bb83597d4a53f2fb6ca2eb3686531a57e713c1c810a71a1767799c6b756b7dc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
