# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "572eea9716e2eb5b559cd26661b8263908691dd0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `572eea9716e2eb5b559cd26661b8263908691dd0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.ToIntLemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.ToInt` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SynthInstance` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reportMissingToIntAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/reportmissingtointadapter--454fd2deac37ae03a7c73d2a.md) | 17 | `declaration-track:454fd2deac37ae03a7c73d2aa4152ae6eccb65f686078350a047212b2af5fde9` |
| 2 | `def` | [throwMissingDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/throwmissingdecl--823e10a720efa1f1470735c7.md) | 20 | `declaration-track:823e10a720efa1f1470735c78fc1e245b706293b8ee1f2af2e12dafdd808e2aa` |
| 3 | `def` | [checkDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/checkdecl--08117aaf08fc849ec0461753.md) | 23 | `declaration-track:08117aaf08fc849ec0461753f88b3079ceda607e5ced1b10b81ddf4394f5dec3` |
| 4 | `def` | [normalizeBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/normalizebound--7b6c474b30fb677e727a90e6.md) | 27 | `declaration-track:7b6c474b30fb677e727a90e6f98edae033e7a62aeadfe747c789d049f9a21d0f` |
| 5 | `def` | [SymbolicBound.isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/symbolicbound-iszero--6803d20b580ada2bbb77031d.md) | 33 | `declaration-track:6803d20b580ada2bbb77031dfad7334eda3ab8880c1203af3e4c97eb37c2b369` |
| 6 | `def` | [SymbolicBound.mkIntNegSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/symbolicbound-mkintnegsucc--eba6f5457daddef4f4cf92d8.md) | 40 | `declaration-track:eba6f5457daddef4f4cf92d81b62d7d13b98c12d05d44e571adfd87365c5f537` |
| 7 | `def` | [getToIntId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/gettointid--1e2de615d68aa224f9e6024c.md) | 46 | `declaration-track:1e2de615d68aa224f9e6024cdb1884c3624036190df6bcaabbc170e2a1931a6d` |
| 8 | `structure` | [ToIntM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/tointm-context--2a767d138091c09f35eaa0e2.md) | 109 | `declaration-track:2a767d138091c09f35eaa0e2e0793f9b20f915e0d112c71374abfb7d8fd17c79` |
| 9 | `abbrev` | [ToIntM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/tointm--a3cc403298426b3ef9cd6069.md) | 112 | `declaration-track:a3cc403298426b3ef9cd6069c6474c98a8faab8661badb981c88df6da6c41502` |
| 10 | `def` | [getToIntId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/gettointid--6caad43206eb6397f5146fd4.md) | 114 | `declaration-track:6caad43206eb6397f5146fd42a61db28fe58d23230d472963137afe23a3e6d05` |
| 11 | `def` | [getInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getinfo--66b068cb22b58d628241383b.md) | 117 | `declaration-track:66b068cb22b58d628241383b25a31bfec583141c36b966cbe4cf77483d3cecc8` |
| 12 | `abbrev` | [modifyInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/modifyinfo--126dc4a44de8b407d65c48d8.md) | 120 | `declaration-track:126dc4a44de8b407d65c48d8ace9e4dc207ba59feb972e424eea6767ae93485a` |
| 13 | `def` | [ToIntM.run?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/tointm-run--29ce622bf5a04c1336c1f477.md) | 124 | `declaration-track:29ce622bf5a04c1336c1f47785eb2d8061ddf90162d7bfbe4bc3b820dca97fe7` |
| 14 | `def` | [ToIntM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/tointm-run--92a20700daa5026b9cfc4211.md) | 128 | `declaration-track:92a20700daa5026b9cfc42119098760f7ab2b4eafaaee8b3bc05d934d718a713` |
| 15 | `def` | [intRfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/intrfl--f05c12c24a11d65812a323b0.md) | 132 | `declaration-track:f05c12c24a11d65812a323b005c3705e4b43896dc0b414764940b3ff2bae5aec` |
| 16 | `def` | [mkOfLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkofle--75bb6ddd6394831bfccd1c30.md) | 134 | `declaration-track:75bb6ddd6394831bfccd1c300e47f724b2ea745d303ebd44ae219717fa12ddce` |
| 17 | `def` | [getOfLE?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getofle--4963e09ae79197c4c3211496.md) | 145 | `declaration-track:4963e09ae79197c4c3211496fba7f9c8134c351a31af8d8aa004702c064d1beb` |
| 18 | `def` | [getOfNotLE?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getofnotle--ef9e4fa61754e7a3a5ff848f.md) | 151 | `declaration-track:ef9e4fa61754e7a3a5ff848f43abc70592957e669ae422001ce9a46b04f631d0` |
| 19 | `def` | [mkOfLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkoflt--3debc37d66010a0435b42575.md) | 157 | `declaration-track:3debc37d66010a0435b4257573b97db1a883c266eb84f32216389b051a0a25e9` |
| 20 | `def` | [getOfLT?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getoflt--e7ddbfae2f85a22e5a3b382a.md) | 168 | `declaration-track:e7ddbfae2f85a22e5a3b382aa6c24c9cdd52aba5f41b2ade5a1b0111ef6a1ac3` |
| 21 | `def` | [getOfNotLT?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getofnotlt--41920605b8841cf2e76caf38.md) | 174 | `declaration-track:41920605b8841cf2e76caf38ce78d00a6cac9647922c43f2faf5b085fcc15237` |
| 22 | `def` | [mkSimpleOpThmCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mksimpleopthmcore--23aab5aa738b092b66000c3b.md) | 181 | `declaration-track:23aab5aa738b092b66000c3b7d3b45f75d9b66d0811b0f8efccfdf5f362291f0` |
| 23 | `def` | [mkSimpleOpThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mksimpleopthm--99e383e24ce11433a9d94efc.md) | 193 | `declaration-track:99e383e24ce11433a9d94efc830b4d1041512b703973b7307924383cc1a8f04c` |
| 24 | `def` | [mkPowThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkpowthm--cdfdb78c630817ad25384bd8.md) | 199 | `declaration-track:cdfdb78c630817ad25384bd8bc6a5f01c23a5e47fcbe8de7cdb1bd26825d0431` |
| 25 | `def` | [mkBinOpThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkbinopthms--fe34290ecb0502898732b9bf.md) | 204 | `declaration-track:fe34290ecb0502898732b9bff1e72d7eaef3e9fef0d678dc8b51429355ec6670` |
| 26 | `def` | [getAddThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getaddthms--95c3f1f40211ca7a49722fc4.md) | 227 | `declaration-track:95c3f1f40211ca7a49722fc4d596863363d07cc360b3e8b256d45be94e527cb5` |
| 27 | `def` | [getMulThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getmulthms--aced2e603430699abf5fb9e5.md) | 233 | `declaration-track:aced2e603430699abf5fb9e505c53ae8cb00600376b954c8cc517906223fa886` |
| 28 | `def` | [getSubThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getsubthm--b852b964e0628ba87f6d791b.md) | 239 | `declaration-track:b852b964e0628ba87f6d791b75f91d6390fba897de74c7621c1cbd2f3f11aa03` |
| 29 | `def` | [getNegThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getnegthm--dffdae090c85ab45d7729702.md) | 245 | `declaration-track:dffdae090c85ab45d7729702d7a03ce7b726dc28805e3a302a78b5ecdb2609f9` |
| 30 | `def` | [getDivThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getdivthm--874be151317057295795951d.md) | 251 | `declaration-track:874be151317057295795951d5806923307e74fdbc1b64145304e50b2706225a7` |
| 31 | `def` | [getModThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getmodthm--62c55ac522ef3dc7281b18ce.md) | 257 | `declaration-track:62c55ac522ef3dc7281b18ce304982e36671f91a910f2fc375c42489a6aabd12` |
| 32 | `def` | [getPowThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getpowthm--20449ac881a7b2d821559f8b.md) | 263 | `declaration-track:20449ac881a7b2d821559f8bd4c11f5b0bcf912b2445b82fa0037fb3a3505d5a` |
| 33 | `def` | [getZeroThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getzerothm--608afce7937af18bf20ff55c.md) | 269 | `declaration-track:608afce7937af18bf20ff55c352bc11114b18dde7beb0e8bbc3a4d81e25da4a3` |
| 34 | `def` | [mkOfNatThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkofnatthm--1d56ab2e0b79d5e32f443170.md) | 275 | `declaration-track:1d56ab2e0b79d5e32f4431703e3f3eb0e8dd1bf452b18d9c16a7f7ea053a49a1` |
| 35 | `def` | [getOfNatThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/getofnatthm--d1c5de312e2df1506b6b2027.md) | 286 | `declaration-track:d1c5de312e2df1506b6b20270b38363bc762666e1023c116c9704076e00866e4` |
| 36 | `def` | [mkToIntVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mktointvar--2da117824c528dee557d5bbb.md) | 292 | `declaration-track:2da117824c528dee557d5bbb3ccb0d87eed975d9a2a5641ca3b9278d41edf20e` |
| 37 | `def` | [getToIntTermType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/gettointtermtype--6f43215615f071436ce003a7.md) | 304 | `declaration-track:6f43215615f071436ce003a7441df51099b5f391d14c7fba91c0dcc3a13367a1` |
| 38 | `def` | [isToIntTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/istointterm--803747049d91060a9e2c8c84.md) | 308 | `declaration-track:803747049d91060a9e2c8c843ed7c71e1a677114e7c1b5904d91df1cf290f88b` |
| 39 | `def` | [isHomo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/ishomo--072eda37c5a6e52e49abfa2f.md) | 311 | `declaration-track:072eda37c5a6e52e49abfa2fe80ba82c232e353ece2bbf776a20e5657ba13278` |
| 40 | `def` | [isWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/iswrap--b06d8ec74197ddb1f06d3430.md) | 314 | `declaration-track:b06d8ec74197ddb1f06d343030a26f1e9c910146c2bd713e92c792f75c039c14` |
| 41 | `def` | [hasNumericLoHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/hasnumericlohi--077ef0fc7973c4f36a99b548.md) | 319 | `declaration-track:077ef0fc7973c4f36a99b548f908faffafc281fa84a98c8e3b582a34128e32e5` |
| 42 | `def` | [expandWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/expandwrap--dfee70e09281dc0c28156084.md) | 329 | `declaration-track:dfee70e09281dc0c281560849c433de7f2925e89cf02eb7e4c81b7ba97eded71` |
| 43 | `def` | [expandIfWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/expandifwrap--3827f354a6b0fe952d4bbb43.md) | 365 | `declaration-track:3827f354a6b0fe952d4bbb43b29f717222d6a632d7453477c27bb65706e1cf0b` |
| 44 | `def` | [mkWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/mkwrap--4689b25873d6feecd7dae039.md) | 370 | `declaration-track:4689b25873d6feecd7dae0391ae8d892f33ea4d34b59617ec46720b262b1e491` |
| 45 | `def` | [ToIntThms.mkResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/tointthms-mkresult--dd01f36ef8720a2fc4f7c48f.md) | 373 | `declaration-track:dd01f36ef8720a2fc4f7c48fc8659c63efcd6403804e861fe76e7ca642e4d7aa` |
| 46 | `def` | [isFinInstOfNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/isfininstofnat--f209d43cb0dfba0b78e51b59.md) | 389 | `declaration-track:f209d43cb0dfba0b78e51b5912a07c3e0d25a2ecf0e6f92071dcd8dbc46e7627` |
| 47 | `def` | [toInt'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/toint--325bbe41bdd9499620b6c1dc.md) | 393 | `declaration-track:325bbe41bdd9499620b6c1dc683886a9e0f364ddc4b1e1348f11cb50ad5a639f` |
| 48 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/toint--cbeb0e54e7ffa73b4cb5860a.md) | 480 | `declaration-track:cbeb0e54e7ffa73b4cb5860a903f5b1c34ebcee0464682ed61d31bbd0aab3011` |
| 49 | `def` | [toInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/toint--06d6d181908b3b5f296d5245.md) | 491 | `declaration-track:06d6d181908b3b5f296d52454cf6a37b93587740957e5ddacb0f32c02c7fa0a0` |
| 50 | `def` | [isSupportedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/issupportedtype--6f20f0b43fe12f429b96db6f.md) | 494 | `declaration-track:6f20f0b43fe12f429b96db6f21a078505be2506738084043b433ff6e1bf56a8a` |
| 51 | `def` | [assertToIntBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/declarations/asserttointbounds--ce109fc141e55a85df8a6fe7.md) | 504 | `declaration-track:ce109fc141e55a85df8a6fe7c8fec946b8f16e46594cd0d4620b314328a961b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
