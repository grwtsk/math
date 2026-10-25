# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Except.Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb65a426b29e43f2ca6493953213fd3a7704ec9a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb65a426b29e43f2ca6493953213fd3a7704ec9a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean.json)

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
| 1 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/pure--1abc04082715c01fafd0493a.md) | 31 | `declaration-track:1abc04082715c01fafd0493abb5a120aab6f00e8d2e762523726175593fd61ca` |
| 2 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/map--8ff371efd8030fcbfa27bf2e.md) | 42 | `declaration-track:8ff371efd8030fcbfa27bf2ef9ae916a1d8f7eaec7f5b426a56fc5ddc6b48f41` |
| 3 | `theorem` | [map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/map-id--03d6b4e00dc7709bfacbb723.md) | 46 | `result-track:03d6b4e00dc7709bfacbb7236464752f24a71fa79326767bc7aa03d9fd5a5856` |
| 4 | `def` | [mapError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/maperror--81d003a66366ed78518c6c56.md) | 59 | `declaration-track:81d003a66366ed78518c6c562cd83fe188a19b3b33d22de3d42c9cc06d26b919` |
| 5 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/bind--63f0aa1ef908575a8d5c8f6e.md) | 74 | `declaration-track:63f0aa1ef908575a8d5c8f6e25ce6437baf922c821f66fc9bbe670e29adc23d4` |
| 6 | `def` | [toBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/tobool--85c991cf599ca2388c6dd037.md) | 81 | `declaration-track:85c991cf599ca2388c6dd0374e68e964e49b3671e12a45a7e263df3be4d6e617` |
| 7 | `abbrev` | [isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/isok--7a82ee8d865cda5f21febf28.md) | 86 | `declaration-track:7a82ee8d865cda5f21febf286193364991829ccd3d0b34a1fb6b0655c908d78f` |
| 8 | `def` | [toOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/tooption--a1292db5a8b1354654ba47b9.md) | 96 | `declaration-track:a1292db5a8b1354654ba47b98494f06859ce3b7dc04e527a7a5ae4180a217610` |
| 9 | `def` | [tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/trycatch--7b5c5d5ec2c01ece9be193d5.md) | 112 | `declaration-track:7b5c5d5ec2c01ece9be193d58a6c95ae1d7ff9beb7ffe91dad37945479189250` |
| 10 | `def` | [orElseLazy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/orelselazy--663dffeac99a8ad7acc395f1.md) | 123 | `declaration-track:663dffeac99a8ad7acc395f1ab229c92abaa110a887538a1c387c49f9851d990` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--64780addc23267fbeb7a365f.md) | 129 | `declaration-track:64780addc23267fbeb7a365f0b47e9c88f1ebe2f9cdba86270d0c4e4c6495df3` |
| 12 | `def` | [ExceptT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt--10ac071c5e5d61578e1d9415.md) | 139 | `declaration-track:10ac071c5e5d61578e1d941572f2db426a4aff485dcb2754b850d351f3e8585b` |
| 13 | `def` | [ExceptT.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt-mk--647dfed4e75583cb3fc40950.md) | 149 | `declaration-track:647dfed4e75583cb3fc4095031e40a9c9050adfc562300d8ec8be3b532dac628` |
| 14 | `def` | [ExceptT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt-run--34852d5e483ea6497e8d4096.md) | 157 | `declaration-track:34852d5e483ea6497e8d4096ce421e47a47fb765a41154e5a4518cbba59cc9e4` |
| 15 | `def` | [ExceptT.runK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt-runk--6e680418bb3517aca9eb63de.md) | 164 | `declaration-track:6e680418bb3517aca9eb63dea8c620166f58825ced834833deefcf53eb865c3c` |
| 16 | `def` | [ExceptT.runCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt-runcatch--a8afde0b8abfba003369659d.md) | 173 | `declaration-track:a8afde0b8abfba003369659d504a6f60d78052287daf93360a8f5f6edfad8eb0` |
| 17 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/pure--4625f32501a17468266ca096.md) | 184 | `declaration-track:4625f32501a17468266ca0969585b485b1569ecf508c6475c0c0b495770df84a` |
| 18 | `def` | [bindCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/bindcont--75eac6a107cabfdea68b0071.md) | 191 | `declaration-track:75eac6a107cabfdea68b007196a9278a0b6ba4d49f085dcdee98e9e82461fa13` |
| 19 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/bind--276bdea255766917c1b25bd5.md) | 200 | `declaration-track:276bdea255766917c1b25bd5384b2fd83e76d13fd2308af0f55dd506dce13d60` |
| 20 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/map--8f9142eaee6a51f9343b4a32.md) | 207 | `declaration-track:8f9142eaee6a51f9343b4a32b8c63ec8b4044f7890fdca6f64ed3df51d3ce68b` |
| 21 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/lift--82e1d86e564bfc59d0b86a1d.md) | 216 | `declaration-track:82e1d86e564bfc59d0b86a1d61c641fd27545f0c1ea3b50da410f2e99f368d58` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--92737e824849522e9996785a.md) | 220 | `declaration-track:92737e824849522e9996785a3a6f5d9a99c886a24bfe91ef9a6583561c5dcd7f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--6c9fbcbeb471591425cfc743.md) | 221 | `declaration-track:6c9fbcbeb471591425cfc74354e0009dcddb4fc9963f6071ab0d0b4b82b5fa0f` |
| 24 | `def` | [tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/trycatch--1679b78ba34d4cc16160fab3.md) | 227 | `declaration-track:1679b78ba34d4cc16160fab33696c26ea29cadb02cd20f10070153463e0d5cbe` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--3c082b7fc80329838a7dd9ad.md) | 232 | `declaration-track:3c082b7fc80329838a7dd9ad79ef709e1b9add869f5ddb7fc55bc6cda584a6bf` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--1557cc0db766db96e28ed746.md) | 235 | `declaration-track:1557cc0db766db96e28ed746ba67b19fef93899c45b5531ccebc4a5dfff3f096` |
| 27 | `def` | [adapt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/adapt--c4b608431887506b0ed916b4.md) | 246 | `declaration-track:c4b608431887506b0ed916b42aadf0fcbdeabe683753a41b4025d1f1a96e5ea4` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--3352a58eda3fff2d2b905de1.md) | 252 | `declaration-track:3352a58eda3fff2d2b905de1ce98416edd3f8697baa6bef4cc9a5ea68d63388c` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--32824fbcb3bc93b0ad735df9.md) | 257 | `declaration-track:32824fbcb3bc93b0ad735df99b8ab2e2d1e5ab78f7b761d76199b626c5a3c081` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--ce431564cff08d7d0f5181fe.md) | 261 | `declaration-track:ce431564cff08d7d0f5181feff29dfb41640131448b03f504edcf3b2c35b3599` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--fc14992901ba454d91ffbb45.md) | 264 | `declaration-track:fc14992901ba454d91ffbb458b00e455fabc9fcfe01fef5e52a2ed933be04fa0` |
| 32 | `def` | [orelse'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/orelse--f9b7c71297d99bf9d6f63e18.md) | 278 | `declaration-track:f9b7c71297d99bf9d6f63e18f33e40a745588c2ba99fef1ffa88fd2b236ca432` |
| 33 | `def` | [observing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/observing--856dd3cbac8dc55db036ca36.md) | 284 | `declaration-track:856dd3cbac8dc55db036ca36dc4c1a690740a07ada8440fbc3aaefbe754f7d55` |
| 34 | `def` | [liftExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/liftexcept--528c78f92a33d89625c6f8ac.md) | 287 | `declaration-track:528c78f92a33d89625c6f8ac501c7d6fb0112bf98b66087ae8dc7bd638bd7b94` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--9202aa4748b01183bfc4a800.md) | 291 | `declaration-track:9202aa4748b01183bfc4a80014d6fb563b1303b12ade2370b15d44e734f21c9b` |
| 36 | `class` | [MonadFinally](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/monadfinally--54b72f8b05e61f22ae8e9c9c.md) | 302 | `declaration-track:54b72f8b05e61f22ae8e9c9c6607c65cb0f47d7cbcb1a159246f3ac279fe6fcb` |
| 37 | `def` | [tryFinally](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/tryfinally--54a8750dbfd51c4cf4954452.md) | 319 | `declaration-track:54a8750dbfd51c4cf49544524dbea9391c0e7e3787e3f5e568445babe57b841f` |
| 38 | `instance` | [Id.finally](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/id-finally--acfa1c88321ccd35350c49fe.md) | 324 | `declaration-track:acfa1c88321ccd35350c49fe2c334a944049ad8966ba8475fa65465419315fb8` |
| 39 | `instance` | [ExceptT.finally](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/exceptt-finally--5c7dc0f06b6b66f97e5f887a.md) | 331 | `declaration-track:5c7dc0f06b6b66f97e5f887a0d352851c9b8e7b34964bd7d610cfde4235d8218` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/declarations/instance--a20c723214935504749ea6da.md) | 342 | `declaration-track:a20c723214935504749ea6da4fe9ceae04cffc3f4185790e4a26df7597e3a26f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
