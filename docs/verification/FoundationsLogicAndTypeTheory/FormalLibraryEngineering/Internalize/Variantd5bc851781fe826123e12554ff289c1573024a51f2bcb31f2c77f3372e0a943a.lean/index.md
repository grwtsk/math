# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internalize.Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17752c2e0822b1773d8ec93a26234685793bdb82",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17752c2e0822b1773d8ec93a26234685793bdb82`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.Envelope` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Grind.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Proof` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.StructId` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Util` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Assert` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Proof` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/gettype--ad25fe835e5e04c291d4c081.md) | 25 | `declaration-track:ad25fe835e5e04c291d4c081ef9e411c155b70231fb5acae772b42a09145bb23` |
| 2 | `def` | [isForbiddenParent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/isforbiddenparent--9f1d51792242d20939d68a5b.md) | 45 | `declaration-track:9f1d51792242d20939d68a5bb4f28b8065cf12945f746b599d9caf38b40b0067` |
| 3 | `def` | [split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/split--cd2fd07ce2452663efec9cf4.md) | 70 | `declaration-track:cd2fd07ce2452663efec9cf4f5078865c0d654555e01281c2b5e41df0aa456c1` |
| 4 | `def` | [mkRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkrel--dfb94980689c56480640d8e5.md) | 80 | `declaration-track:dfb94980689c56480640d8e5adfc1a92ad6c38f041e0927b654a76b43b26a086` |
| 5 | `def` | [mkLeNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mklenorm0--7d05397a52236be449da0533.md) | 86 | `declaration-track:7d05397a52236be449da053363e44e1b1f0229923f884fc95edc0ac6845f93c3` |
| 6 | `def` | [mkLtNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkltnorm0--7c8dc52a9f7be2399c73476b.md) | 89 | `declaration-track:7c8dc52a9f7be2399c73476b6bda26a3bbc3fbdaf556823cfafd659444d6d24a` |
| 7 | `def` | [mkEqNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkeqnorm0--5b6f4aff60cbd0fc83bffddb.md) | 92 | `declaration-track:5b6f4aff60cbd0fc83bffddb95427e58f41c0217c63f2ec18abe0bfec7fef8d3` |
| 8 | `def` | [mkCnstrNorm0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkcnstrnorm0--5207d7ba90e49abcb4bce74d.md) | 95 | `declaration-track:5207d7ba90e49abcb4bce74dafc84ae37e6d142005cd510f677ee9e2a7e24c0a` |
| 9 | `def` | [mkDenote0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkdenote0--50536f3d7e5768a043762e75.md) | 105 | `declaration-track:50536f3d7e5768a043762e75334064f236f43cb72c1968a91f78e7a59ea7e87b` |
| 10 | `def` | [mkCommRingCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkcommringcnstr--94c80271b01324fce9949bd9.md) | 110 | `declaration-track:94c80271b01324fce9949bd9dac266d1378366ac027c1131c376afcaa9ca5c28` |
| 11 | `def` | [mkNonCommRingCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mknoncommringcnstr--bd4859104668805fdd5b908b.md) | 131 | `declaration-track:bd4859104668805fdd5b908bf50da0a4125def097bf48c782b44f94ccfa6de4f` |
| 12 | `def` | [mkCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mkcnstr--a5adfbfb79c98b2cca676a74.md) | 153 | `declaration-track:a5adfbfb79c98b2cca676a74946ac402134a0602509d83218b59153afa7f7c8f` |
| 13 | `def` | [setStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/setstructid--c4338832360ee9a77fddbe9a.md) | 163 | `declaration-track:c4338832360ee9a77fddbe9ac737956a5ccb2c86eafc83b5e39f9a57d536a9c1` |
| 14 | `def` | [updateTermMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/updatetermmap--177de1a4a4a7a45b1453df3c.md) | 169 | `declaration-track:177de1a4a4a7a45b1453df3c7175ca4bf1bb15b92d6c9f0f8da9196087c1104c` |
| 15 | `def` | [mkNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/mknode--af7506217fcfabf4bafb4430.md) | 175 | `declaration-track:af7506217fcfabf4bafb4430ab1d51685f408153cdf046e27166539deee58a42` |
| 16 | `def` | [internalizeCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/internalizecnstr--764b2d3826073067aed2cffd.md) | 208 | `declaration-track:764b2d3826073067aed2cffda33415c9118be9efbb39c7ab0d191ead5541be0c` |
| 17 | `structure` | [OffsetTermResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/offsettermresult--552caf68b5f988b6b6bd3f76.md) | 243 | `declaration-track:552caf68b5f988b6b6bd3f76b27bd7eee8af5023eef28684e3af4bc62ec1b0a4` |
| 18 | `def` | [toOffsetTermCommRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/tooffsettermcommring--858884c88eaeb6a3d96dea6c.md) | 248 | `declaration-track:858884c88eaeb6a3d96dea6cd82446ab24385aa41386dfeb4777090080155179` |
| 19 | `def` | [toOffsetTermNonCommRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/tooffsettermnoncommring--50e3720622fc0c61b8670647.md) | 257 | `declaration-track:50e3720622fc0c61b8670647539fc52ade33693fa61accbedf022e5b02d16581` |
| 20 | `def` | [toOffsetTerm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/tooffsetterm--0ee90005b852847edd091f67.md) | 266 | `declaration-track:0ee90005b852847edd091f677ec40b9cf29eb8a5a021d094fb51ef8b6a6931cd` |
| 21 | `def` | [internalizeTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/internalizeterm--496a37b9d4b8326d7a70c9fe.md) | 279 | `declaration-track:496a37b9d4b8326d7a70c9fefbfa33aca08bff32e01520d006dce65c88b2a77f` |
| 22 | `def` | [adaptNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/adaptnat--7de82d17cc462270a404b3bd.md) | 292 | `declaration-track:7de82d17cc462270a404b3bdb0c4b20194a9fcd204437ec660fae34a780db7b8` |
| 23 | `def` | [adapt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/adapt--d4f0bdc14ee68e139ee55e3f.md) | 318 | `declaration-track:d4f0bdc14ee68e139ee55e3f4f9a9215a66add2553076fd7844e16c9787d0553` |
| 24 | `def` | [alreadyInternalizedHere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/alreadyinternalizedhere--3a14d6a8d266feb8a2c4ff13.md) | 326 | `declaration-track:3a14d6a8d266feb8a2c4ff1385b01f2a0b45f9edddaf48230786215bdda0d0bb` |
| 25 | `def` | [internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/declarations/internalize--1511a93a8da962de5206b389.md) | 330 | `declaration-track:1511a93a8da962de5206b38916ffa2ec32bffb26046102a66b69dcbedd2e1241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
