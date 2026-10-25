# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a78d393f80bd594d73341b7c89852067b15927e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a78d393f80bd594d73341b7c89852067b15927e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean.json)

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
| 1 | `inductive` | [Exception](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception--1a6a46b176e5b6e7c1a53e82.md) | 27 | `declaration-track:1a6a46b176e5b6e7c1a53e82dd702f1e00672c116c3c1a62aa0e4d498f280599` |
| 2 | `def` | [Exception.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception-tomessagedata--323037a7aa83f85a9c917916.md) | 37 | `declaration-track:323037a7aa83f85a9c917916d42246adf4c399648815093c5f9ff274724d2bab` |
| 3 | `def` | [Exception.hasSyntheticSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception-hassyntheticsorry--ee16040e03a8fec7c42b251b.md) | 41 | `declaration-track:ee16040e03a8fec7c42b251b9ff432ae9a22cf5a1e5840f1bc1ad1327f0bbd76` |
| 4 | `def` | [Exception.getRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception-getref--6ed4154fa028345eec974e29.md) | 49 | `declaration-track:6ed4154fa028345eec974e299a03b104f06fb045b113618758634c6770fb513e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/instance--0dc426084b963dcd90b2bd63.md) | 53 | `declaration-track:0dc426084b963dcd90b2bd6301406c78a6f920376bc15f15eee9b50e02571089` |
| 6 | `class` | [AddErrorMessageContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/adderrormessagecontext--3fac6740b87f2045feac604e.md) | 59 | `declaration-track:3fac6740b87f2045feac604e61927d443b0caee5fc0853b6cf4e4407a3f1d4c7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/instance--cee1853a36c907d1db285d12.md) | 62 | `declaration-track:cee1853a36c907d1db285d12f9944a86d2467bbef0a78df99d8255ab12e8ad3d` |
| 8 | `class` | [abbrev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/abbrev--ba67b45b1c1aee1fb2a87dda.md) | 67 | `declaration-track:ba67b45b1c1aee1fb2a87ddabbfd88fc0f00c00c4696c5f2e86b240cd7b207d6` |
| 9 | `def` | [throwError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwerror--354ee7351ccd4e7265d57298.md) | 79 | `declaration-track:354ee7351ccd4e7265d572984bfbf4497b66e52720a550244ad49d3e036dc9e8` |
| 10 | `def` | [unknownIdentifierMessageTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/unknownidentifiermessagetag--8d9582dc8010248b47017e5f.md) | 89 | `declaration-track:8d9582dc8010248b47017e5f7257ab61873a689bf85248ec8fc04dd52820ce99` |
| 11 | `def` | [throwErrorAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwerrorat--f959c21a1b984b61a34d7e98.md) | 92 | `declaration-track:f959c21a1b984b61a34d7e987d7c8befb92db39d7a6cc1319c98176148b5ebe1` |
| 12 | `def` | [«throwNamedError»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/thrownamederror--4edda21a98e159b863ada1bd.md) | 101 | `declaration-track:4edda21a98e159b863ada1bd1ee9915dac0793a9c9b311d4efc96449099f1f50` |
| 13 | `def` | [«throwNamedErrorAt»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/thrownamederrorat--212def54a5650fdd1f861972.md) | 113 | `declaration-track:212def54a5650fdd1f861972b0f0a14d505b31d8c1d6d4ec85a0d3ee32ff6d10` |
| 14 | `def` | [mkUnknownIdentifierMessageCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/mkunknownidentifiermessagecore--291b8e6be472606c7d67d9f9.md) | 117 | `declaration-track:291b8e6be472606c7d67d9f9201038ce4d3b5270ba8602526271b93592e3946e` |
| 15 | `def` | [mkUnknownIdentifierMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/mkunknownidentifiermessage--c4bde50c883abd1b3ba2767a.md) | 145 | `declaration-track:c4bde50c883abd1b3ba2767a8461e37f157911a7be6efa6f567ebb49ceec377a` |
| 16 | `def` | [throwUnknownIdentifierAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwunknownidentifierat--cc9d2779a9ccd76eedb3c077.md) | 155 | `declaration-track:cc9d2779a9ccd76eedb3c0775e410fed16a752f389eccaab39a8603e4a57606c` |
| 17 | `def` | [throwUnknownConstantAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwunknownconstantat--954aa2c6d664fc401a96eb3f.md) | 164 | `declaration-track:954aa2c6d664fc401a96eb3fbea7590d069fd5cea6ef6c842b9e9519a9563f7c` |
| 18 | `def` | [throwUnknownConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwunknownconstant--657b479c6bb4834729c9bcb3.md) | 172 | `declaration-track:657b479c6bb4834729c9bcb38ed9ae634f96bdc149886435cb9e4443fb964419` |
| 19 | `def` | [ofExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/ofexcept--4b45945de1cce45cd3938d65.md) | 179 | `declaration-track:4b45945de1cce45cd3938d650ef96fd2c77a1e88bd69962393637fda88998c40` |
| 20 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/builtin-initialize--a8658b7d379dde7a73217d30.md) | 184 | `declaration-track:a8658b7d379dde7a73217d300713caea25769aae376bb048fd3dd99ceda082fc` |
| 21 | `def` | [throwInterruptException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwinterruptexception--ffeccf2072087ef0f688cb55.md) | 190 | `declaration-track:ffeccf2072087ef0f688cb5598e6d7b1411ab86bf9ffc2c696a5ffc7a199a1c3` |
| 22 | `def` | [Exception.isInterrupt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception-isinterrupt--81e42d233298b4b8a935fae1.md) | 194 | `declaration-track:81e42d233298b4b8a935fae15d3ab65e39661254d18ec9a0b32bbdcf79dd101f` |
| 23 | `def` | [throwKernelException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwkernelexception--520ed0c7d377bf394f13d13e.md) | 201 | `declaration-track:520ed0c7d377bf394f13d13ed91a64669c54ec620e785edb8ee54623471e640f` |
| 24 | `def` | [ofExceptKernelException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/ofexceptkernelexception--c5631fe45ce7c40396d20b1b.md) | 207 | `declaration-track:c5631fe45ce7c40396d20b1b0782eda9c24f5c62516dd0cc2a856d20ec2d4a8a` |
| 25 | `class` | [MonadRecDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/monadrecdepth--ae960ef11e64b8f220fb01ea.md) | 214 | `declaration-track:ae960ef11e64b8f220fb01eab9523634d570dc8c7b97fac711fd6f7c72171bd2` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/instance--201e8fa7b888eb44cf841fe1.md) | 219 | `declaration-track:201e8fa7b888eb44cf841fe13fa31ef3cfd26ea760954c23b966a7d9bcf2b8b7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/instance--4c3cac6c668d816422615a84.md) | 224 | `declaration-track:4c3cac6c668d816422615a84afe4d576d8e01e8156c00e2204b27646c15acfb2` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/instance--370758d072fad022dea683cd.md) | 227 | `declaration-track:370758d072fad022dea683cdecdf5217dafec3b54454d90d65f364450516e1be` |
| 29 | `def` | [throwMaxRecDepthAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/throwmaxrecdepthat--38d2bd568b4ae83608033881.md) | 233 | `declaration-track:38d2bd568b4ae8360803388191d76a4e97609b34e976d47dd113fbb56fae2d3d` |
| 30 | `def` | [Exception.isMaxRecDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/exception-ismaxrecdepth--bf32a6cc02a6316df678bba9.md) | 242 | `declaration-track:bf32a6cc02a6316df678bba92ec537840a73b19d4574e6ecbe7ad9ebf2a2f8b7` |
| 31 | `def` | [withIncRecDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/withincrecdepth--c1e35f113e124db657a911e2.md) | 253 | `declaration-track:c1e35f113e124db657a911e259bdebff5fb4e0e9a018011de2c707fd77f30a33` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/syntax--92ffd0e04c4d6b49101ebcc5.md) | 267 | `declaration-track:92ffd0e04c4d6b49101ebcc506860335e8b36697486f3f981565074a3c8eade1` |
| 33 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/syntax--17aef1a2dd4a3b842cd2e23a.md) | 275 | `declaration-track:17aef1a2dd4a3b842cd2e23aac272b00680a44e6d50eadc7d5a97828c36807eb` |
| 34 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/macro-rules--9727df979e71b37ee3daa9c3.md) | 277 | `declaration-track:9727df979e71b37ee3daa9c3add3a1354728add1f9a5189a0ac7dcf729d97891` |
| 35 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exception/Variant08c58c3c9b3c332d02d6e06e26f6420762dd5fb3140f6b1b74236442628e472a.lean/declarations/macro-rules--fe04a8f73ef87feb3fef06c3.md) | 281 | `declaration-track:fe04a8f73ef87feb3fef06c388676810be74af2525b807b865db18526e157750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
