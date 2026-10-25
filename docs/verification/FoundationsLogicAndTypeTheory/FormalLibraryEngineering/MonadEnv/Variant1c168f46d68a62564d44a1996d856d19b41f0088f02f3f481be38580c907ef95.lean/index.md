# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadEnv.Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d664d380e69f8c497257554be3ea802d0d2ad9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d664d380e69f8c497257554be3ea802d0d2ad9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Do` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/setenv--7778ce285be04c8f8e99b19f.md) | 19 | `declaration-track:7778ce285be04c8f8e99b19f44e3d4e6b816029beea0785f56c14616e655de61` |
| 2 | `def` | [withEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/withenv--d3b469d043c0e71d72b9702f.md) | 22 | `declaration-track:d3b469d043c0e71d72b9702f81556f1c971d0c87fe9709d66a31d6c48e5dbd9d` |
| 3 | `def` | [isInductiveCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isinductivecore--b2f1e41c835ee1ae2c2f1f23.md) | 30 | `declaration-track:b2f1e41c835ee1ae2c2f1f23e17e6adef70c29fb6c65f9fa031bbfcaa976375c` |
| 4 | `def` | [isInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isinductive--7050312e18136a53d27ea161.md) | 33 | `declaration-track:7050312e18136a53d27ea1616f19e0bfbbfede6c6b168707ea616c0bb38e2cb2` |
| 5 | `def` | [isRecCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isreccore--1d789ef3c460fb0dd406db5c.md) | 36 | `declaration-track:1d789ef3c460fb0dd406db5c947c1a9d21ded604a532f14959a5c02b0300953e` |
| 6 | `def` | [isRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isrec--a6a0f91f3f2124343b46f70f.md) | 39 | `declaration-track:a6a0f91f3f2124343b46f70f824d8c819bf2cd6e76b2a82a03eb0ba0c5d87afb` |
| 7 | `def` | [withoutModifyingEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/withoutmodifyingenv--547e5511ee7cccbcb7c5fd66.md) | 42 | `declaration-track:547e5511ee7cccbcb7c5fd66d37cf35ed5e08819f26b292fc331c6c17cb37215` |
| 8 | `def` | [withoutModifyingEnv'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/withoutmodifyingenv--ced12e9605ffae39d75fdca2.md) | 48 | `declaration-track:ced12e9605ffae39d75fdca24fc044f6303af921d95f4e8410f446dceb18db23` |
| 9 | `def` | [matchConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconst--a3fa785a875025221ba2a9bf.md) | 56 | `declaration-track:a3fa785a875025221ba2a9bf766789f9d411173c9a5b3c279166538100a6293f` |
| 10 | `def` | [matchConstInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconstinduct--c44fb049abc47d7a0218460c.md) | 64 | `declaration-track:c44fb049abc47d7a0218460c96cb288012ac938833ccb6f2c4dfc6e54e27f64d` |
| 11 | `def` | [matchConstCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconstctor--ec73733f8852b2ea784fbb5d.md) | 70 | `declaration-track:ec73733f8852b2ea784fbb5d45a73d97b012906982eca0dbf1b1a44e18120a14` |
| 12 | `def` | [matchConstRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconstrec--a94512ae7f7ad75ba5bd9ef1.md) | 76 | `declaration-track:a94512ae7f7ad75ba5bd9ef183105d794625e144b2763d331dbd76dcb2705329` |
| 13 | `def` | [hasConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/hasconst--0084f4172b0aae901d39d75a.md) | 82 | `declaration-track:0084f4172b0aae901d39d75a50b3f87de74639b92acaf4c401567ce9cf1a72db` |
| 14 | `def` | [getConstInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstinfo--50f668a12265d575275f6b1e.md) | 85 | `declaration-track:50f668a12265d575275f6b1ed167af163d1e02d542426ceb8f84a4caa7f06892` |
| 15 | `def` | [getConstVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstval--8aa3c1184ebc86a1f052f94a.md) | 90 | `declaration-track:8aa3c1184ebc86a1f052f94a84cc6e5b476c2d284045049484acc82a2ec527a0` |
| 16 | `def` | [getAsyncConstInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getasyncconstinfo--ccc23a7808926cee95043d8f.md) | 95 | `declaration-track:ccc23a7808926cee95043d8fc7d11e20b41444c3ebe18885d51d23e5cc6d7da0` |
| 17 | `def` | [isInductiveCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isinductivecore--945a31843785b57ed92b354c.md) | 100 | `declaration-track:945a31843785b57ed92b354ca8a42dffde676eb3259dfb37d49b6d759eecfcdb` |
| 18 | `def` | [isInductive?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isinductive--7e8559d6d152b5937532a2eb.md) | 108 | `declaration-track:7e8559d6d152b5937532a2ebc2397551be18fad2ddb64c84bbe318cead890df1` |
| 19 | `def` | [isDefn?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isdefn--f2c97a1c82b11b9733d9d160.md) | 111 | `declaration-track:f2c97a1c82b11b9733d9d1600db7d3f16da0879f4f4cb53da9081ff3a71e7cd6` |
| 20 | `def` | [isCtor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isctor--84dc7db51505ab499b856cbd.md) | 118 | `declaration-track:84dc7db51505ab499b856cbdd756f7e14851c89f7e3f88527ace69c5452447d1` |
| 21 | `def` | [isRec?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isrec--ff51fe15a4aba04211bccc0d.md) | 125 | `declaration-track:ff51fe15a4aba04211bccc0d3e75eaa23508727db926565cfaabcda5f4bb0e9f` |
| 22 | `def` | [mkConstWithLevelParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/mkconstwithlevelparams--f2ae1426bbe42a582b222f5a.md) | 132 | `declaration-track:f2ae1426bbe42a582b222f5adfe2076693bf18c2d5c1e20eef88c98b5972c5a7` |
| 23 | `def` | [getConstInfoDefn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstinfodefn--2c1845533f4137c9d73d806b.md) | 136 | `declaration-track:2c1845533f4137c9d73d806b25799972f16126d60d8b00ba2dbebd005fe9f57c` |
| 24 | `def` | [getConstInfoInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstinfoinduct--fbb626187158ff3ab63b1e50.md) | 139 | `declaration-track:fbb626187158ff3ab63b1e50897463a2e8d5ba64f20e0a708801aaa0b1082c03` |
| 25 | `def` | [getConstInfoCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstinfoctor--43d575ddca5f21c00f988c82.md) | 142 | `declaration-track:43d575ddca5f21c00f988c820fc1299813e96bf134030f172ba61655f6b41962` |
| 26 | `def` | [getConstInfoRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/getconstinforec--1034bff51a32f7aafe061268.md) | 145 | `declaration-track:1034bff51a32f7aafe061268c7ad7bfdc77275bb89cd17897d69ee14c87109b1` |
| 27 | `def` | [matchConstStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconststructure--bcac3293ee7c34d96c87eb4c.md) | 153 | `declaration-track:bcac3293ee7c34d96c87eb4cfef11dcd5f38da15256662084065224a2843bc1f` |
| 28 | `def` | [matchConstNonRecStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/matchconstnonrecstructure--461e41723612456f6be4d8fa.md) | 167 | `declaration-track:461e41723612456f6be4d8fa4ffc3142ce9bad008dd3c5de4e10c47b6d6086e6` |
| 29 | `opaque` | [hasCompileError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/hascompileerror--2483cb1ee8d1cc6325da8f03.md) | 179 | `declaration-track:2483cb1ee8d1cc6325da8f03cdf85ac573a5c73bf0fb416d72763819bb7e60d7` |
| 30 | `def` | [evalConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/evalconst--940be4a2ce0f6a479933a839.md) | 181 | `declaration-track:940be4a2ce0f6a479933a839a34f45492c1d5aa0caa6547819bc89d41e1a5191` |
| 31 | `def` | [evalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/evalconstcheck--664ceefac443cda0da947758.md) | 187 | `declaration-track:664ceefac443cda0da947758a78b79d5e098d4da5c0b8569177b244f82bc4ed6` |
| 32 | `def` | [findModuleOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/findmoduleof--b42f5a7bf36b6c5df33f3d75.md) | 192 | `declaration-track:b42f5a7bf36b6c5df33f3d756a7ac58d22f8a97bba391a5b83982e52397f520f` |
| 33 | `def` | [isEnumType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean/declarations/isenumtype--69a97f41754cae61c025b75b.md) | 198 | `declaration-track:69a97f41754cae61c025b75bcf77cd8d350c6383963f825d05fd0999cdee89f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
