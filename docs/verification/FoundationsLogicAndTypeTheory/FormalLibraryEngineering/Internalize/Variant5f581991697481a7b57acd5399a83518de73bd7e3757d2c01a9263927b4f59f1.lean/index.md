# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internalize.Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d42e9efc7d24cb5af822793562774c9740f80183",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d42e9efc7d24cb5af822793562774c9740f80183`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.Envelope` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Proof` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.StructId` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Util` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Assert` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Proof` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/gettype--c96857259778430376f96b55.md) | 33 | `declaration-track:c96857259778430376f96b55c64ed39944242f5a76606c5d77aeb63a91a52c9e` |
| 2 | `def` | [isForbiddenParent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/isforbiddenparent--7f0095c1ee8cb74bc82b0129.md) | 53 | `declaration-track:7f0095c1ee8cb74bc82b012922cb1e9b27477b1d970bf5c53acb4e0f1d6a4770` |
| 3 | `def` | [split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/split--4db3303b67565e0b8b937f32.md) | 78 | `declaration-track:4db3303b67565e0b8b937f32a3f1ff2e1cf806660a31bc504743a82a8088e98b` |
| 4 | `def` | [mkRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkrel--9ef11760255c3522477c364b.md) | 88 | `declaration-track:9ef11760255c3522477c364b4c673771652d1217870b398ccc6e848d7b87f667` |
| 5 | `def` | [mkLeNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mklenorm0--73bc82d9b106bc7c7d97e9ff.md) | 94 | `declaration-track:73bc82d9b106bc7c7d97e9ff2082e4c47f6b26823803902cf816787e9b362f43` |
| 6 | `def` | [mkLtNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkltnorm0--69435763d27281829561c499.md) | 97 | `declaration-track:69435763d27281829561c4999b001eaaaeeb89ef7968a8b41b416a01661611a6` |
| 7 | `def` | [mkEqNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkeqnorm0--cfc0b74272637b9f3142c36b.md) | 100 | `declaration-track:cfc0b74272637b9f3142c36b01a969cbd2b5f6f5ab174c4c38388387df336c37` |
| 8 | `def` | [mkCnstrNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkcnstrnorm0--27a38b6dba4d895e86710c6e.md) | 103 | `declaration-track:27a38b6dba4d895e86710c6efb96519438bc83c5d3516fa080fe8742cf33e478` |
| 9 | `def` | [mkDenote0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkdenote0--572b94d5b8fbfcfbd573f5ee.md) | 113 | `declaration-track:572b94d5b8fbfcfbd573f5ee52210db317bb5d51cf058627353020094f5c2e4a` |
| 10 | `def` | [mkCommRingCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkcommringcnstr--9c7d5052bfda4c5bf9f1fcf5.md) | 118 | `declaration-track:9c7d5052bfda4c5bf9f1fcf5e609848ec4b2bcc28f168fa586826cc0d01d1856` |
| 11 | `def` | [mkNonCommRingCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mknoncommringcnstr--ac65fd8ef897a0191e104fc6.md) | 139 | `declaration-track:ac65fd8ef897a0191e104fc6ea27f8363a51a3d3e228adb495e02118ac41664f` |
| 12 | `def` | [mkCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mkcnstr--6eee757fbb09cc0905dcb2d5.md) | 161 | `declaration-track:6eee757fbb09cc0905dcb2d5447366eeaa2472f4c837e53beadd4d0b5a96191f` |
| 13 | `def` | [setStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/setstructid--df38240c1f7d9193f64dc2bc.md) | 171 | `declaration-track:df38240c1f7d9193f64dc2bc093e58e918665afc6b0c4da0cdbdd2f8ad52bab1` |
| 14 | `def` | [updateTermMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/updatetermmap--834cf5ebcb2a02401aa4ee25.md) | 177 | `declaration-track:834cf5ebcb2a02401aa4ee255be4108b28f8212bbea993d233b6e93b71e1c2c7` |
| 15 | `def` | [mkNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/mknode--9c57019b77bf7abe273c3251.md) | 183 | `declaration-track:9c57019b77bf7abe273c325163f129dc64ffbb0aac900d6b33c72d53426b0728` |
| 16 | `def` | [internalizeCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/internalizecnstr--1e717494a9f5ca968982bb99.md) | 216 | `declaration-track:1e717494a9f5ca968982bb999d44de479cad944a0b178262b267cd3cd20ec683` |
| 17 | `structure` | [OffsetTermResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/offsettermresult--53c3827033dc0166bb856feb.md) | 251 | `declaration-track:53c3827033dc0166bb856feb6b422825fea4dd2765ce1d942a3516a607fa5564` |
| 18 | `def` | [toOffsetTermCommRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/tooffsettermcommring--4cafa4417a0307045f94549f.md) | 256 | `declaration-track:4cafa4417a0307045f94549f11b97ee69cbcbce8cbdd993f72b51452e0dc8c9f` |
| 19 | `def` | [toOffsetTermNonCommRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/tooffsettermnoncommring--0caa67fd2748423ebc2a3149.md) | 265 | `declaration-track:0caa67fd2748423ebc2a314916871dc401dfa117171dd45e2bce848c1ae6b99c` |
| 20 | `def` | [toOffsetTerm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/tooffsetterm--1202e23c257a08655f4cfa95.md) | 274 | `declaration-track:1202e23c257a08655f4cfa958ac0be860977e3564f50020c521f376d7bbfce74` |
| 21 | `def` | [internalizeTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/internalizeterm--4c89f091f81013a65d84cd28.md) | 287 | `declaration-track:4c89f091f81013a65d84cd28b329e655212f5078d2e7de2780e8647dd43c41b2` |
| 22 | `def` | [adaptNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/adaptnat--2f964ceb8e1af748df644da1.md) | 300 | `declaration-track:2f964ceb8e1af748df644da149a96cdc29c2990294231a2cddec854ed830f267` |
| 23 | `def` | [adapt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/adapt--a8f92140bd1965c5439cebcb.md) | 326 | `declaration-track:a8f92140bd1965c5439cebcb3fdbf5d5a2d9907d776864e939d7a886d7416baa` |
| 24 | `def` | [alreadyInternalizedHere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/alreadyinternalizedhere--22e63d4592b2b82d1afeec82.md) | 334 | `declaration-track:22e63d4592b2b82d1afeec8293f5117535de988380cfff4e0625e8ff1953821b` |
| 25 | `def` | [internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/declarations/internalize--125793dbcbffaff050573b28.md) | 338 | `declaration-track:125793dbcbffaff050573b28f26da16e9833f21c1aef4486bd3c63ea4c5b6e36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
