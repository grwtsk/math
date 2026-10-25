# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1fe689d568d644aedb2fdc62327d35c204c2bf8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1fe689d568d644aedb2fdc62327d35c204c2bf8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IneqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/ineqcnstr-throwunexpected--faba39cd28f60c8c41c97caa.md) | 14 | `declaration-track:faba39cd28f60c8c41c97caa888fe4cb976ea9b3bbbab32080c86a63ad4abd31` |
| 2 | `def` | [DiseqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/diseqcnstr-throwunexpected--f76dc32a0cedcd948990e284.md) | 17 | `declaration-track:f76dc32a0cedcd948990e2841bf793cf8ec9bdde070c8a848896f6a73d43ec1c` |
| 3 | `def` | [EqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/eqcnstr-throwunexpected--7baeda66b19c227a0292162b.md) | 20 | `declaration-track:7baeda66b19c227a0292162b098e937f791a6f0ed46f5c46df027256b7eb8043` |
| 4 | `def` | [checkIsNextVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/checkisnextvar--735fcf0436a93b00d1dc789a.md) | 23 | `declaration-track:735fcf0436a93b00d1dc789a1f3c56487cf1126df65a11698509d8ebddf65059` |
| 5 | `def` | [traceAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/traceassignment--37ec36b4e70d73797460030c.md) | 27 | `declaration-track:37ec36b4e70d73797460030c66d58fe3222acb10f2ccee784f71c371c7b15719` |
| 6 | `def` | [setAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/setassignment--c0ed469b60b1dea0c161dc3d.md) | 30 | `declaration-track:c0ed469b60b1dea0c161dc3deca08b6a1198a3a3c312264ea702ea567bfc6978` |
| 7 | `def` | [getBestLower?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/getbestlower--165cc323d7271fad4778fc8d.md) | 40 | `declaration-track:165cc323d7271fad4778fc8d8f1a89989ab8b3d1416128c0fd5ba1543f14ffdf` |
| 8 | `def` | [getBestUpper?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/getbestupper--97bbf9e7f909a5710a26bba0.md) | 59 | `declaration-track:97bbf9e7f909a5710a26bba0d13f9ad18005dd8dc25bbf9441c2e7bb03a9c6e3` |
| 9 | `def` | [getDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/getdiseqvalues--84bb6e38c54c2cb048707269.md) | 74 | `declaration-track:84bb6e38c54c2cb0487072690a421477eeb71a49c5eabab3f3d8902a367b44e4` |
| 10 | `def` | [findDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/finddiseq--3d185b0ed9e6094b0cf72ff0.md) | 83 | `declaration-track:3d185b0ed9e6094b0cf72ff088610ba1d033fd1fb4cb37904032b1811c6c7137` |
| 11 | `def` | [inDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/indiseqvalues--b95390594b4cb9e5a0fd0998.md) | 86 | `declaration-track:b95390594b4cb9e5a0fd0998f30f1c08568eb042eef1ab6c560b32e1e12bede9` |
| 12 | `def` | [geAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/geavoiding--4c91f06d9ead9075e85f8859.md) | 89 | `declaration-track:4c91f06d9ead9075e85f88593cb0c7db6d09f9ccbe064216e67df03a36a3b7a1` |
| 13 | `def` | [leAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/leavoiding--c529963e67015bb552a79dd6.md) | 92 | `declaration-track:c529963e67015bb552a79dd6056c7dd7438e93cb0ca25ea9488b758b0f212e0e` |
| 14 | `def` | [resolveLowerUpperConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/resolvelowerupperconflict--e6d7b46fd3df2b42dce61894.md) | 95 | `declaration-track:e6d7b46fd3df2b42dce61894173061a4432b094b9f4bacaf8a8837b37f87d1dc` |
| 15 | `def` | [findInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/findint--acde12a3a2dbfd8eb930c98f.md) | 106 | `declaration-track:acde12a3a2dbfd8eb930c98fc7b09be94afd95e1f291c635d1e358f5ca03dd24` |
| 16 | `def` | [findRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/findrat--7f656e770267da1e2af2c3f5.md) | 125 | `declaration-track:7f656e770267da1e2af2c3f5a73f8dfbf54837e55937ac948d6580fada98673c` |
| 17 | `def` | [DiseqCnstr.split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/diseqcnstr-split--c07e6494cf354941f9d45e08.md) | 132 | `declaration-track:c07e6494cf354941f9d45e080bb5ad71bec67bd75dce4799fb87d81f2dd039b2` |
| 18 | `def` | [resolveLowerDiseqConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/resolvelowerdiseqconflict--5495e26787a5da1e6634d824.md) | 147 | `declaration-track:5495e26787a5da1e6634d82400d908a2e7dc449613031a70f739f6fb5d223983` |
| 19 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/processvar--2f9dedaf9f571db0c8cc172d.md) | 159 | `declaration-track:2f9dedaf9f571db0c8cc172d215ea93a7284210dfa0b4658b7885bbcd30096a6` |
| 20 | `def` | [hasAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/hasassignment--bf8e9e0a127c3b8195080183.md) | 211 | `declaration-track:bf8e9e0a127c3b8195080183aeeb1f706e2373bd8038a38013a64077804b1e57` |
| 21 | `def` | [findCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/findcase--f4fb03f026a14aed299dfb83.md) | 214 | `declaration-track:f4fb03f026a14aed299dfb83ef2beb5ba5ff1a942dd45b29be2cb24204e979a6` |
| 22 | `def` | [resolveConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/resolveconflict--383ce3ac46abac30be324eb7.md) | 226 | `declaration-track:383ce3ac46abac30be324eb7721fbd4696ce665d5e51e033f3ca3d5c4e717acd` |
| 23 | `def` | [resetDecisionStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/resetdecisionstack--f1b56f8e26676c9d9e9ed525.md) | 243 | `declaration-track:f1b56f8e26676c9d9e9ed525b744740a6fef87ebe9d16cd24249b52d9682f750` |
| 24 | `def` | [assignElimVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/assignelimvars--dfe94e8df7266d38295f7bf2.md) | 252 | `declaration-track:dfe94e8df7266d38295f7bf22f1da578299af312decab77def0a6aabf49829b7` |
| 25 | `def` | [searchAssignmentMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/searchassignmentmain--6bbdf0f782f28060486d6434.md) | 274 | `declaration-track:6bbdf0f782f28060486d64346544b3e349926018db98812d210bae7d58c48f87` |
| 26 | `def` | [searchAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/searchassignment--52e6d0a94c90b47f40d7c1ea.md) | 292 | `declaration-track:52e6d0a94c90b47f40d7c1ea19a08155143861d88999ef2475c6136eeb87a382` |
| 27 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/declarations/check--dd9d5410664aeb3b2eef1ad0.md) | 303 | `declaration-track:dd9d5410664aeb3b2eef1ad0968645aa9c9e4b9a6e8866bcd76db43228f6a8a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
