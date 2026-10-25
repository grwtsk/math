# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e18afc9357aa3c4b8984eff5bfb18e439717a54",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e18afc9357aa3c4b8984eff5bfb18e439717a54`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/state--322b3d421dd9ee344128397d.md) | 36 | `declaration-track:322b3d421dd9ee344128397d7bf83d3c55e9193c149e11616f75a1ec0caee953` |
| 2 | `abbrev` | [FoldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/foldm--bb093ae0b770071efedacbf2.md) | 40 | `declaration-track:bb093ae0b770071efedacbf2fde60f8a6833997ded49abd9084cd1c8c5103dbc` |
| 3 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/fold--b504c4bf7e25d8780035a658.md) | 42 | `declaration-track:b504c4bf7e25d8780035a6580ca67078593e756adb09baf89e0676e1251c1252` |
| 4 | `def` | [foldUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/foldunsafe--2919badcbb109318117e3db6.md) | 85 | `declaration-track:2919badcbb109318117e3db626d025c90283b041897d9402a31eb3d2783cfebc` |
| 5 | `opaque` | [foldRelevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/foldrelevantconstants--37b8bb5ee68d0627a002586e.md) | 92 | `declaration-track:37b8bb5ee68d0627a002586e1fddef94894b6db9e6d1f486a8a8349b23d14e65` |
| 6 | `def` | [relevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/relevantconstants--ecf83d5dc9c962ab8e0cc90c.md) | 95 | `declaration-track:ecf83d5dc9c962ab8e0cc90c873b0b8c0595a30a9493c9cc399e308bcc4e618c` |
| 7 | `def` | [relevantConstantsAsSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/relevantconstantsasset--47f8684c5e2c4830fd1164bb.md) | 98 | `declaration-track:47f8684c5e2c4830fd1164bb0b61da6b2778835b434014ee7968dfa0f20b9ec8` |
| 8 | `def` | [Lean.MVarId.getConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/lean-mvarid-getconstants--969dc8934740b725cc6f7522.md) | 103 | `declaration-track:969dc8934740b725cc6f7522eea7e64929dd8fb6741b72aafde452cdcf025195` |
| 9 | `def` | [Lean.MVarId.getRelevantConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/lean-mvarid-getrelevantconstants--7946dd31ec4dba9ef2b2e15d.md) | 115 | `declaration-track:7946dd31ec4dba9ef2b2e15d5031e1bdea66ea5d94706b23e7da18ca80f2e120` |
| 10 | `structure` | [Suggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/suggestion--7c10903aa50206dad0ae33d5.md) | 136 | `declaration-track:7c10903aa50206dad0ae33d5f55ad1ec431f632ca695c7ebd12261cf991c0407` |
| 11 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/config--73629bd4796c630491b54ef0.md) | 151 | `declaration-track:73629bd4796c630491b54ef0831b6b8928f54b927b1f622de723690f3766775d` |
| 12 | `abbrev` | [Selector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/selector--a3ebe8506810e6fbe98f86c7.md) | 178 | `declaration-track:a3ebe8506810e6fbe98f86c720686ebc4a3fed4f281b5e2a7dff4937052169d4` |
| 13 | `def` | [ppSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/ppselector--58a35bd1879570732a2d56e6.md) | 184 | `declaration-track:58a35bd1879570732a2d56e64ea983d1674fd8f0ab63c41f1ad3e647ef3875bb` |
| 14 | `def` | [postFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/postfilter--a6af50e2b472f89bfe63c9bf.md) | 195 | `declaration-track:a6af50e2b472f89bfe63c9bf62e55702c08c063f165c0fc9a04f0087d3e83658` |
| 15 | `def` | [maxSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/maxsuggestions--ea568c2cbe501752d9980e83.md) | 203 | `declaration-track:ea568c2cbe501752d9980e83336575c786111f8c2a3f0c77c2f736392e1c4d80` |
| 16 | `def` | [combine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/combine--9d59f6acdce7aa14ecd4b3e1.md) | 208 | `declaration-track:9d59f6acdce7aa14ecd4b3e19dc9af24f77ab73e376a3c75bb0820f6599eba78` |
| 17 | `def` | [filterGrindAnnotated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/filtergrindannotated--0a98a0b86a86ec54bc5b743b.md) | 231 | `declaration-track:0a98a0b86a86ec54bc5b743b9860c07fb87a24301f7a08462d00a6f38bec2d5d` |
| 18 | `def` | [intersperse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/intersperse--13f1256cb0e80af9a00ca1c3.md) | 254 | `declaration-track:13f1256cb0e80af9a00ca1c32a84449a6bd5e5711d16daaead862323220ba139` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/builtin-initialize--7652e3b0064bf771d3b580cc.md) | 305 | `declaration-track:7652e3b0064bf771d3b580cce851437e0807d8be9772d06eeb43a823619648b7` |
| 20 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/builtin-initialize--2b64264a9d35f3dda4ba247f.md) | 316 | `declaration-track:2b64264a9d35f3dda4ba247f0998c4c705000b6b61abd87d5bbe53d19ff46799` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/builtin-initialize--ed4d9c7059453084c3d5e0ef.md) | 327 | `declaration-track:ed4d9c7059453084c3d5e0ef2fb243dcc8356d453da07363072377be6c45ae7f` |
| 22 | `def` | [isDeniedModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/isdeniedmodule--4df703114f625086616876ca.md) | 333 | `declaration-track:4df703114f625086616876ca459781b9feee2d759057f41ae5820415f4c81347` |
| 23 | `def` | [isDeniedPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/isdeniedpremise--0d932c59fd4f532355d59d62.md) | 336 | `declaration-track:0d932c59fd4f532355d59d62dbbc0802e3013299ac9e798a5a956e908ad1dbc5` |
| 24 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/empty--de1b2c4a0f3b62b2e58a1639.md) | 357 | `declaration-track:de1b2c4a0f3b62b2e58a1639ea7ac16e7efc1e9e1fffe882b5538aa69bbddef4` |
| 25 | `def` | [random](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/random--c2d4c696ce2f81297d7e1aea.md) | 360 | `declaration-track:c2d4c696ce2f81297d7e1aeadfe373d4836b4705ab3615d353b762f5595272a1` |
| 26 | `def` | [currentFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/currentfile--58700fc6971d217d752c4ba1.md) | 374 | `declaration-track:58700fc6971d217d752c4ba175eac1b8387a88a9536fdc1629f3c75bdd287c33` |
| 27 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/builtin-initialize--4238833d9f79f777c38a04fe.md) | 389 | `declaration-track:4238833d9f79f777c38a04feaeac16c7966aaf5c88956e4d85a2da243f7121b0` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/builtin-initialize--5c4f97ebf4125a276abf171f.md) | 399 | `declaration-track:5c4f97ebf4125a276abf171ffa7e422fd9a3a99239b8bfaa32814aafcaa3d640` |
| 29 | `def` | [getSelectorImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/getselectorimpl--9922cd8ac213d99e997df96d.md) | 410 | `declaration-track:9922cd8ac213d99e997df96d962d9b2d1ee6fe334757a76f8e7f28a4804cacfc` |
| 30 | `opaque` | [getSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/getselector--2bf526925318479dd0e3d541.md) | 418 | `declaration-track:2bf526925318479dd0e3d541b74e8311229e45a719e6395daa60fe70f6be817b` |
| 31 | `def` | [select](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/select--3f7f15d4e82563ed46d5fee0.md) | 421 | `declaration-track:3f7f15d4e82563ed46d5fee0736e254c33efa427f8b5534d89827c8879cdc35d` |
| 32 | `def` | [elabSetLibrarySuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/elabsetlibrarysuggestions--f3905a670a29d355bdc088d4.md) | 440 | `declaration-track:f3905a670a29d355bdc088d4b30f5abb3760b5214482006c1d8ab9879c690084` |
| 33 | `def` | [evalSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/declarations/evalsuggestions--39ffcde71aa0070531981861.md) | 451 | `declaration-track:39ffcde71aa0070531981861f0c30070e816da2fbf0beec7375acd06132ef3fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
