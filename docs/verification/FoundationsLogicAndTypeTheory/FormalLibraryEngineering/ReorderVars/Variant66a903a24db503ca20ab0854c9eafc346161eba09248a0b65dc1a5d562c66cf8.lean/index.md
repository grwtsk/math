# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReorderVars.Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573ab04baadde3fd6607bfd6267d3a6f9d797700",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573ab04baadde3fd6607bfd6267d3a6f9d797700`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.EqCnstr` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.DvdCnstr` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.LeCnstr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Inv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VarInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/varinfo--f4a592ddf05efaaa2d254f5a.md) | 17 | `declaration-track:f4a592ddf05efaaa2d254f5a79ab71485fcd1eb07fd87e781a175ed316c47b98` |
| 2 | `abbrev` | [CollectM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/collectm--0e41f1db0cfb811ef6e22b0c.md) | 23 | `declaration-track:0e41f1db0cfb811ef6e22b0c2873af8260ea57f597ff17a68f8ecbf999b2593e` |
| 3 | `def` | [updateLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/updatelower--7dd387880c47772a156edc04.md) | 25 | `declaration-track:7dd387880c47772a156edc0474f5bb05904285739ce4d3e4cffb497c3ad7d575` |
| 4 | `def` | [updateUpper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/updateupper--3f3d765bfd7d418b6a595507.md) | 28 | `declaration-track:3f3d765bfd7d418b6a595507d1ce9286736bd2be17eb7bad7a72de15430364ec` |
| 5 | `def` | [updateVarCoeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/updatevarcoeff--fdfdffb6364b03effb1f10ab.md) | 31 | `declaration-track:fdfdffb6364b03effb1f10abf76ff13427f1174b1e6ed086249adfef5f836e60` |
| 6 | `def` | [updateDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/updatedvd--59a2534abd31fbf58e1b6b6e.md) | 34 | `declaration-track:59a2534abd31fbf58e1b6b6ed16769c982fa66f3a1e8210b36a07a85fa721f4b` |
| 7 | `def` | [collectVarInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/collectvarinfo--fe4b3b6a85ed8a8e7417f6d7.md) | 37 | `declaration-track:fe4b3b6a85ed8a8e7417f6d7964eca4a8a63ca9615e183ec96e8fdd96e706cb2` |
| 8 | `def` | [cost₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/cost--fc3279792840fb12085204cc.md) | 65 | `declaration-track:fc3279792840fb12085204ccf602cc5814ee7ba536e1c39432f8bc529a8e1966` |
| 9 | `def` | [cmp₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/cmp--660a4e88014ea5b4b8bc24ce.md) | 68 | `declaration-track:660a4e88014ea5b4b8bc24cea577d44e1c7e46707615e9c2b163c046db7dca86` |
| 10 | `def` | [cost₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/cost--6fed7d68b49ce3819d355195.md) | 71 | `declaration-track:6fed7d68b49ce3819d35519539b33f57013325219166dc7de54b3c05fcbdcbb3` |
| 11 | `def` | [cmp₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/cmp--5335ae08e2a6c9dbffb54818.md) | 74 | `declaration-track:5335ae08e2a6c9dbffb54818583280b311df8e1c4d6d8cb6ecfdf0d97a6b9213` |
| 12 | `def` | [cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/cmp--739754e3862b697a165cd3c2.md) | 77 | `declaration-track:739754e3862b697a165cd3c2faf343ee04be367445e71fa15be9a2f7853d0cd1` |
| 13 | `def` | [sortVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/sortvars--12f9a8d4be1f60009faec62d.md) | 80 | `declaration-track:12f9a8d4be1f60009faec62d0ca93aee894b0c67325fdc4339f3146ce8e7090f` |
| 14 | `def` | [mkPermInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/mkperminv--11560dc5b37e4b77ccf0b693.md) | 86 | `declaration-track:11560dc5b37e4b77ccf0b693ec6f82a249bd0162956fd13538783b58f51b85b0` |
| 15 | `def` | [_root_.Int.Internal.Linear.Poly.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/root-int-internal-linear-poly-reorder--823d8354f1362c4a4d81fa88.md) | 92 | `declaration-track:823d8354f1362c4a4d81fa88ac52270ec5cb13ab46947c6205e0262db76974ce` |
| 16 | `def` | [DvdCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/dvdcnstr-reorder--d48dde4644bad7544dd05523.md) | 97 | `declaration-track:d48dde4644bad7544dd055238db4dd7ae20bceb26cfa8e0462fe409358ade3c9` |
| 17 | `def` | [EqCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/eqcnstr-reorder--5f11c1aacf8ae105417ce069.md) | 100 | `declaration-track:5f11c1aacf8ae105417ce069d2b960903099da72c5e9be89b08926801c4961f3` |
| 18 | `def` | [LeCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/lecnstr-reorder--639f5a81b46d1bb167b0f13d.md) | 103 | `declaration-track:639f5a81b46d1bb167b0f13d9b42f99f35266e7ebd972d61f14cee2ffc17f899` |
| 19 | `def` | [DiseqCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/diseqcnstr-reorder--ffc90f7a70d19f7aea44939b.md) | 106 | `declaration-track:ffc90f7a70d19f7aea44939b07a9524c8220b0fc4ec22d4b8739f23d1a0c59b8` |
| 20 | `def` | [reorderVarMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/reordervarmap--b87f3db30d6e8724485a66ce.md) | 109 | `declaration-track:b87f3db30d6e8724485a66cee20d83ff80025b857d7ec95f3d764b6edb876518` |
| 21 | `def` | [reorderDiseqSplits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/reorderdiseqsplits--ebce56850da1bb1a180e804c.md) | 116 | `declaration-track:ebce56850da1bb1a180e804ce34da9bbdd4e11411017f559f7ed1d5da7e4ca9d` |
| 22 | `def` | [reorderVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.lean/declarations/reordervars--40e6c5622418eabff9133f37.md) | 122 | `declaration-track:40e6c5622418eabff9133f377dbe0e3c9821db02046e7a857d66657ff86466f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
