# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "406b2fd17976e810aa68e4962d194e597daaf13f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `406b2fd17976e810aa68e4962d194e597daaf13f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Arith.Int.Simp` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.DvdCnstr` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ReorderVars` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CooperSplit.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/coopersplit-assert--0322c62425c5a9570e2cb486.md) | 18 | `declaration-track:0322c62425c5a9570e2cb486b41ae7efb0be570d6a7bea1130b63cfc36fd8ae3` |
| 2 | `def` | [checkIsNextVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/checkisnextvar--5bbd254897c216713a187d1a.md) | 54 | `declaration-track:5bbd254897c216713a187d1a017b5e608746f493690c1ef0cd7276b2312cf039` |
| 3 | `def` | [traceAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/traceassignment--7d8358a2053d98155b838c19.md) | 58 | `declaration-track:7d8358a2053d98155b838c19edddcb3adc385b39f105fc1e0ba07462465a94e9` |
| 4 | `def` | [setAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/setassignment--a62cc09528bfd1203aa9d68d.md) | 61 | `declaration-track:a62cc09528bfd1203aa9d68dfce255584e5f16742eb8b00f476de35892956533` |
| 5 | `def` | [skipAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/skipassignment--4ca94cceaebee9569db6571c.md) | 66 | `declaration-track:4ca94cceaebee9569db6571c02b29bbcfd3dfc689ab896bc70345a81020c3b14` |
| 6 | `def` | [assignElimVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/assignelimvars--e290ac365989bfa7b746e02f.md) | 71 | `declaration-track:e290ac365989bfa7b746e02fbc522969732df43cce01f22f7150315911537b22` |
| 7 | `def` | [eqCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/eqcoeffs--19705d1bc042decf4dedeeca.md) | 92 | `declaration-track:19705d1bc042decf4dedeeca523b84681c03913c1686637d37e065a9f1668f1c` |
| 8 | `def` | [tightUsingDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/tightusingdvd--53f8e5f2e7cc6c0a151468b8.md) | 99 | `declaration-track:53f8e5f2e7cc6c0a151468b81f7bee24011067ec5f4db398d5f4b27c93962d5f` |
| 9 | `def` | [getBestLower?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/getbestlower--f6f85d17da6fa8a1cce4432c.md) | 123 | `declaration-track:f6f85d17da6fa8a1cce4432c15d0d3b43c60e359dab9a40d2ddbf529f317e2dd` |
| 10 | `def` | [getBestUpper?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/getbestupper--b116811bd5938fcaac32fb9a.md) | 143 | `declaration-track:b116811bd5938fcaac32fb9a7a4ca9661f30158e9fc47aa6cb208f8deb233248` |
| 11 | `def` | [getDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/getdiseqvalues--0d9d176fbb19713cb5ea63c8.md) | 159 | `declaration-track:0d9d176fbb19713cb5ea63c8fd602b4d6d6581198ceaaa7140397c823f908440` |
| 12 | `structure` | [DvdSolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdsolution--fa8a6e749796b77e53df9daf.md) | 179 | `declaration-track:fa8a6e749796b77e53df9daf43940e32dda0f028aba97262dc9e3202d402c913` |
| 13 | `def` | [DvdCnstr.getSolutions?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdcnstr-getsolutions--94ec01e65aa4897e0ee388cb.md) | 183 | `declaration-track:94ec01e65aa4897e0ee388cb39202d945cf0bcb5a2123fe11a30ab78a170ea34` |
| 14 | `def` | [resolveDvdConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvedvdconflict--08f0854e1483b849f6007ae5.md) | 209 | `declaration-track:08f0854e1483b849f6007ae5c3e13ebd565f5f6481db451af9be06194ae37991` |
| 15 | `def` | [DvdSolution.ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdsolution-ge--138b2c9b8706948f92b68983.md) | 224 | `declaration-track:138b2c9b8706948f92b689836ebeffabb732bd254c6673147c211e8897dc1227` |
| 16 | `def` | [DvdSolution.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdsolution-le--323d93bece8c7fb9c28d422b.md) | 236 | `declaration-track:323d93bece8c7fb9c28d422b7574861cac81d97bebe0d7b16120519039283d14` |
| 17 | `def` | [findDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/finddiseq--efd193090ece4b3568142797.md) | 239 | `declaration-track:efd193090ece4b3568142797b598859c19413597d8be5eb4d158f5754a1e1667` |
| 18 | `def` | [inDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/indiseqvalues--930a3c96952dee4a0fea7edc.md) | 243 | `declaration-track:930a3c96952dee4a0fea7edc330876408d70324eb13baba710bed4c5c09ff1c3` |
| 19 | `def` | [findRatDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/findratdiseq--3ba2f0db18f7c21b47634c63.md) | 246 | `declaration-track:3ba2f0db18f7c21b47634c6311334004eb365305c3d47cda400ad0ac15874cd4` |
| 20 | `def` | [DvdSolution.geAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdsolution-geavoiding--ac48c1aad980701b1b42a7ab.md) | 249 | `declaration-track:ac48c1aad980701b1b42a7ab787577376d8e9fde26088f156991dba7a04b30d0` |
| 21 | `def` | [DvdSolution.leAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/dvdsolution-leavoiding--f1d7bb5493d6323f612a4974.md) | 256 | `declaration-track:f1d7bb5493d6323f612a497479acc2e53b2175bbf33df6de6b456730bca9435a` |
| 22 | `inductive` | [FindIntValResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/findintvalresult--24ecf314361255f92f023adb.md) | 263 | `declaration-track:24ecf314361255f92f023adb62101e3a7975afb794a9999151170f1e534768db` |
| 23 | `def` | [findIntVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/findintval--021e2f0ebe2fee61ffa626d5.md) | 274 | `declaration-track:021e2f0ebe2fee61ffa626d5e39e8cdc0383efe524ec861ead9302c86b0e162d` |
| 24 | `def` | [findRatVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/findratval--cac2fecc2f2fd48347c35f9d.md) | 288 | `declaration-track:cac2fecc2f2fd48347c35f9d5f6966eec7c18ac89ec8ebd74775f9530d23a62c` |
| 25 | `def` | [resolveRealLowerUpperConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvereallowerupperconflict--6069d2e30cdd53171b5a4b4d.md) | 295 | `declaration-track:6069d2e30cdd53171b5a4b4d6efa46a6a32405f56f8c15033a655f4f1151b630` |
| 26 | `def` | [resolveCooperUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvecooperunary--325d1babbc07e9aef09d1c2b.md) | 313 | `declaration-track:325d1babbc07e9aef09d1c2b9b261402ee52d9a56177c5de1701661b86b273ec` |
| 27 | `def` | [resolveCooperPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvecooperpred--a79e78269ec1fc89d8ed98e9.md) | 325 | `declaration-track:a79e78269ec1fc89d8ed98e9217621a02eab67dfe96eb0b521c92a60b477edeb` |
| 28 | `def` | [resolveCooper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvecooper--4baaed8cbe4f10b323996d42.md) | 333 | `declaration-track:4baaed8cbe4f10b323996d42c4c68e345e8a04eac1ea94d36e40ca28f316ea8b` |
| 29 | `def` | [resolveCooperDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvecooperdvd--d2064c3717982a0830156505.md) | 337 | `declaration-track:d2064c3717982a08301565057f6c7c74ca1be9ecf51d3b58a1160bd32434eeef` |
| 30 | `def` | [DiseqCnstr.split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/diseqcnstr-split--fe74eb2f7cb7ce28e6089336.md) | 341 | `declaration-track:fe74eb2f7cb7ce28e6089336ab7df0f10fa3b3a2e689f840576d0c0c3ddca9e1` |
| 31 | `def` | [resolveCooperDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolvecooperdiseq--7993934caea585c2c2d24a13.md) | 357 | `declaration-track:7993934caea585c2c2d24a138bdf95533208464f9b04021f025d8db0012d3ad2` |
| 32 | `def` | [resolveRatDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolveratdiseq--e5c4ee421d362325c1716426.md) | 376 | `declaration-track:e5c4ee421d362325c17164265091afb8968dbd08f4617fab7cdea697937488d9` |
| 33 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/processvar--1d794ea366195d7a2fa54e88.md) | 385 | `declaration-track:1d794ea366195d7a2fa54e88a0abf71181ebfa4c17480a160ed7fb776e973552` |
| 34 | `def` | [hasAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/hasassignment--684c399d5389dc565be09cde.md) | 455 | `declaration-track:684c399d5389dc565be09cdea4b30a0932f6bf69f8880052d4ee6e0513cb33e2` |
| 35 | `def` | [findCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/findcase--5b3d02a70cbedaf75ff7fca1.md) | 458 | `declaration-track:5b3d02a70cbedaf75ff7fca197c567d09fd87b83e22bbebf3b24506224a92cc5` |
| 36 | `def` | [resolveConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resolveconflict--e8a0add2db7389f48b263a6c.md) | 470 | `declaration-track:e8a0add2db7389f48b263a6ca6d736a02732413319252a29338c0843a61a6255` |
| 37 | `def` | [searchAssignmentMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/searchassignmentmain--6681bbccc6db1762754a3787.md) | 504 | `declaration-track:6681bbccc6db1762754a3787c511aaabea4bd10d79220b7beecb02f910bfce22` |
| 38 | `def` | [resetDecisionStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/resetdecisionstack--bd810b4c32e839234ebfb971.md) | 526 | `declaration-track:bd810b4c32e839234ebfb971343a4ff58366daa527f67c1f7f7a08119e1bf325` |
| 39 | `def` | [searchQLiaAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/searchqliaassignment--5cac80cf73a63ef35c8606cb.md) | 534 | `declaration-track:5cac80cf73a63ef35c8606cb3fa820bb78f9ae4eb13b6e0d77a8947d2b7fd0cb` |
| 40 | `def` | [traceActiveCnstrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/traceactivecnstrs--3b7a938bbd8f7a3f9a8fa79b.md) | 543 | `declaration-track:3b7a938bbd8f7a3f9a8fa79b033d1997582e02a726147e8dea2f6a21e8966d9b` |
| 41 | `def` | [searchLiaAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/searchliaassignment--39c6fa6e77999c97e6bb2756.md) | 557 | `declaration-track:39c6fa6e77999c97e6bb27566133cd3a2c4e3b5c1d2e4f6b2b5b505532115872` |
| 42 | `def` | [searchAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/searchassignment--e96b5f39696d6e98be7b6b73.md) | 567 | `declaration-track:e96b5f39696d6e98be7b6b73ecf459dbe9318f97b329fd9f0ae68ebe59b36027` |
| 43 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/declarations/check--31290bcee5453f8a65fa8871.md) | 590 | `declaration-track:31290bcee5453f8a65fa8871174ad9850b5d3996baced63ca6558b3db47ba2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
