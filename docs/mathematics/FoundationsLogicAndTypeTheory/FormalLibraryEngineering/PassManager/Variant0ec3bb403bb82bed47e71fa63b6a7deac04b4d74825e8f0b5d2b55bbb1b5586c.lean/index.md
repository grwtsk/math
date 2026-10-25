# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PassManager.Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 1 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d72ed7b50a5ae010630c454d9345f567281ef5f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Phase.toNat](declarations/phase-tonat--9a232ad389f63b80dc32c900.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--0646b9a09476436c3f797dfc.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Phase.withPurityCheck](declarations/phase-withpuritycheck--cd0531294129120c6e699af1.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance--45743a2ab8b3fb0f46350823.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance--ef12e9a4ad11fce321682d7c.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance--7c3e86d353c243aefe07ec6c.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance--ad45230430d4846d36cb70d5.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Phase.le_refl](declarations/phase-le-refl--5b06d84cf0324f4c9a787b55.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Pass](declarations/pass--a3c4a93a00e34b52f40a3af9.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--fc476a6b5df12fffab045e67.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [PassInstaller](declarations/passinstaller--3a26efdc48baa4f2fd75a450.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [PassManager](declarations/passmanager--ad5cce9aab8611ec3a90023d.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkPerDeclaration](declarations/mkperdeclaration--6ca692b581888bbb903b964b.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [validatePasses](declarations/validatepasses--83036bc6a4bbbe8bfde42a48.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [validate](declarations/validate--8bc63efa9efbb399519a9ad4.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [findOccurrenceBounds](declarations/findoccurrencebounds--10f2697288e3b65bb88970e8.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [installAtEnd](declarations/installatend--ad5b3aaf4ae67e1bdd88726f.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [append](declarations/append--eb3d7485ada50b284be407c7.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [withEachOccurrence](declarations/witheachoccurrence--9083addc2e8274e479f81639.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [installAfter](declarations/installafter--c59b53f9f98f0e93ed93dff0.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [installAfterEach](declarations/installaftereach--66254252d8c1863fd08c47e2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [installBefore](declarations/installbefore--450493d8963166c9eba6f349.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [installBeforeEachOccurrence](declarations/installbeforeeachoccurrence--5d10791ac73f4914c431a517.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [replacePass](declarations/replacepass--a7c7aa3de27f94d17152815a.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [replaceEachOccurrence](declarations/replaceeachoccurrence--c6707a6301d24c1d2ea42095.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [run](declarations/run--0f22851900a2765bd3b2d962.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getPassInstallerUnsafe](declarations/getpassinstallerunsafe--0ccfaa44107672024769e8c5.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `opaque` | [getPassInstaller](declarations/getpassinstaller--15a77923797071a73d90176c.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [runFromDecl](declarations/runfromdecl--97c4ec28db01410191b5984b.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
