# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13c58404849f60680ed7db74df3123c0f28782db",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13c58404849f60680ed7db74df3123c0f28782db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/builtin-initialize--6a0a1e78059f1cfed59c7595.md) | 24 | `declaration-track:6a0a1e78059f1cfed59c75956d6e6ccd7a1e4297dad10c888602635366ff4d02` |
| 2 | `inductive` | [AttrKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/attrkind--0035494526d86631b52ca9fb.md) | 26 | `declaration-track:0035494526d86631b52ca9fbe796d59fb8c8a3829fa8a9f99ff156fca6241a58` |
| 3 | `def` | [getAttrKindCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/getattrkindcore--07d7889c5a12f8161fb4f445.md) | 39 | `declaration-track:07d7889c5a12f8161fb4f445969ba34c490a32bcd62f7fb794df1879fef1dbef` |
| 4 | `def` | [getAttrKindFromOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/getattrkindfromopt--e3bef7af2a4968e866c18662.md) | 76 | `declaration-track:e3bef7af2a4968e866c186627441a2820c7e9b8baad66044ba98fe0c3589cdbf` |
| 5 | `def` | [throwInvalidUsrModifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/throwinvalidusrmodifier--19704dc3a027935bb0b68a51.md) | 82 | `declaration-track:19704dc3a027935bb0b68a5199a1557b8dab2f8401eade2793e9dca747cde4d4` |
| 6 | `def` | [Extension.addCasesAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-addcasesattr--22698daeab4292f8ff105858.md) | 85 | `declaration-track:22698daeab4292f8ff1058582768296199b4c439d72346084be0e7e0ce75c35d` |
| 7 | `def` | [Extension.addExtAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-addextattr--c09d3ba02095b86a2fbb5fae.md) | 89 | `declaration-track:c09d3ba02095b86a2fbb5fae00af78d735a9ed7dca66acd44ccd3bc2a7f82eee` |
| 8 | `def` | [Extension.addFunCCAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-addfunccattr--cfe8b09057968872df28fa87.md) | 93 | `declaration-track:cfe8b09057968872df28fa87c44d68d9c027b2f08148192a43ce3e25f3e03ed1` |
| 9 | `def` | [Extension.eraseExtAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-eraseextattr--e50e5d989712382f3d86a804.md) | 96 | `declaration-track:e50e5d989712382f3d86a8041d67266e6af38b5687da1781bf4d0111a7f1f9de` |
| 10 | `def` | [Extension.eraseCasesAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-erasecasesattr--ba2f10410c5561c96d36bcdb.md) | 101 | `declaration-track:ba2f10410c5561c96d36bcdb6784f8f61eedc2f51ee126201949b84e023cc044` |
| 11 | `def` | [Extension.eraseFunCCAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-erasefunccattr--8855ea5d5f58ebfe697f5c40.md) | 107 | `declaration-track:8855ea5d5f58ebfe697f5c401fc8b2b9105e232a6bd97d6e0e5ca9097f2a45de` |
| 12 | `def` | [Extension.eraseEMatchAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-eraseematchattr--42949358b2816a60ef01934d.md) | 114 | `declaration-track:42949358b2816a60ef01934db7982580704f108d97bcbef004733bf831e9ebfc` |
| 13 | `def` | [Extension.eraseInjectiveAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-eraseinjectiveattr--9df54d849ff988732dd3e8ae.md) | 119 | `declaration-track:9df54d849ff988732dd3e8ae01a16bf3df086bfd7bfebb5054f7d2598ef6dc65` |
| 14 | `def` | [Extension.isExtTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-isexttheorem--ab7cd68ee5a7eb7bdb24b328.md) | 124 | `declaration-track:ab7cd68ee5a7eb7bdb24b3287197a6c0f3cbe638a8478f089499a772d299c9e6` |
| 15 | `def` | [Extension.isInjectiveTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-isinjectivetheorem--f15a87b8adbce40b3268732a.md) | 127 | `declaration-track:f15a87b8adbce40b3268732a5a941c748d5dcbdd2c8c791cc85d24e308880777` |
| 16 | `def` | [Extension.hasFunCCAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extension-hasfunccattr--b7bf548681bc8bcf6e8dcdd5.md) | 130 | `declaration-track:b7bf548681bc8bcf6e8dcdd5f819fe440a85ef9119b9af4934f8c218a7162896` |
| 17 | `def` | [mkGrindAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/mkgrindattr--58d8b11d9c3a0bcc22d5776e.md) | 139 | `declaration-track:58d8b11d9c3a0bcc22d5776e42553821db7a7fafc55cf23679f153084b2db3ec` |
| 18 | `abbrev` | [ExtensionMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/extensionmap--cf24836269eff2474d10d1c5.md) | 238 | `declaration-track:cf24836269eff2474d10d1c5d4ffac1f68efea554a17ce11f30b6c8096d97800` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/builtin-initialize--4ded40512ee8f380d7cd986e.md) | 240 | `declaration-track:4ded40512ee8f380d7cd986e5212add0aa5b111869e3c4589e0a53baddda638e` |
| 20 | `def` | [getExtension?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/getextension--53e73bc0472b3611bff33d19.md) | 242 | `declaration-track:53e73bc0472b3611bff33d19c65aba1da2993270fcdcde282e517d173129f33a` |
| 21 | `def` | [registerAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/registerattr--da6ce97b532f0ef2b4ae98f6.md) | 248 | `declaration-track:da6ce97b532f0ef2b4ae98f6b51639a9511f98bae917b13687c1fd89fc829726` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/builtin-initialize--b5c91b460e8195be18c8c548.md) | 257 | `declaration-track:b5c91b460e8195be18c8c5481e5db3cf42756cf75d8a346f246b0526a66f56de` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/builtin-initialize--a362e3caa8e370ec4173c2c2.md) | 264 | `declaration-track:a362e3caa8e370ec4173c2c22ccf040d1e7609087b4505c1356cb334f85233f9` |
| 24 | `def` | [isGlobalSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/declarations/isglobalsplit--771a645121453d80a2feb51c.md) | 267 | `declaration-track:771a645121453d80a2feb51ca5df44bbafa4ec7e77f281f98ee6c4f5cb329b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
