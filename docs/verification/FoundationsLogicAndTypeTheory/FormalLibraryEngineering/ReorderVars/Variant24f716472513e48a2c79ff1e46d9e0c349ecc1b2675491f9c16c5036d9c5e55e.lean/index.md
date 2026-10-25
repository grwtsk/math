# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReorderVars.Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cae6808e6ea65ba2a295f4ad877fd7c69157b28",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cae6808e6ea65ba2a295f4ad877fd7c69157b28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.EqCnstr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.DvdCnstr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.LeCnstr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Inv` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VarInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/varinfo--c71be0219bb030bb6ab2b5b8.md) | 25 | `declaration-track:c71be0219bb030bb6ab2b5b8661af68022a84c12823feacaf311852849ddd780` |
| 2 | `abbrev` | [CollectM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/collectm--813d3ec7b323e7d6e036d039.md) | 31 | `declaration-track:813d3ec7b323e7d6e036d0394f1edbf8ebf685ef0a39ef9860342d9a6579af13` |
| 3 | `def` | [updateLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/updatelower--cfd243181d13b754821f493c.md) | 33 | `declaration-track:cfd243181d13b754821f493cae9f04958fe71856851bad7c5fd0bb9708e7f887` |
| 4 | `def` | [updateUpper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/updateupper--a487eab31ea60ff45ec4c530.md) | 36 | `declaration-track:a487eab31ea60ff45ec4c530ff2273227a5a1085af9c456c5c6ae21b5770ce7d` |
| 5 | `def` | [updateVarCoeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/updatevarcoeff--e3baa79fb041b313d39bbb07.md) | 39 | `declaration-track:e3baa79fb041b313d39bbb07ff8ec776cb06cb55f499b2b83b9b88929cc4eec2` |
| 6 | `def` | [updateDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/updatedvd--6697b3ab2a519bf3c8a63399.md) | 42 | `declaration-track:6697b3ab2a519bf3c8a63399d6b88a225dbc50fdd1b296e28f27d95db4ce8cbc` |
| 7 | `def` | [collectVarInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/collectvarinfo--d00a7c42aee98a69de218919.md) | 45 | `declaration-track:d00a7c42aee98a69de2189190d14edd00120ae5d676c4a5da6e07604e40be9b2` |
| 8 | `def` | [cost₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/cost--2ba8e7aa233ca49b896a59ee.md) | 73 | `declaration-track:2ba8e7aa233ca49b896a59ee9c3c0cc3d0dc7bbcb9621f7cf0115bc45ef16bd0` |
| 9 | `def` | [cmp₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/cmp--5a432d233402cae45c8efbd8.md) | 76 | `declaration-track:5a432d233402cae45c8efbd882928d68e555384f34102d9517bfd76b6038e1a9` |
| 10 | `def` | [cost₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/cost--ed1cef69231a8b4206da510d.md) | 79 | `declaration-track:ed1cef69231a8b4206da510da4c882e3e69c86abbd6478fb85230437c0513c0e` |
| 11 | `def` | [cmp₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/cmp--fa254ec2f7a1c5e14d8a6de8.md) | 82 | `declaration-track:fa254ec2f7a1c5e14d8a6de85baf20b55cc2c5298925996687aa08901e2d7762` |
| 12 | `def` | [cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/cmp--8e8c8472f64c919dc3b3acee.md) | 85 | `declaration-track:8e8c8472f64c919dc3b3acee85494635381a49b71121a3d860eef601b849c22b` |
| 13 | `def` | [sortVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/sortvars--45c8028f97ccf2fd6c4a28c8.md) | 88 | `declaration-track:45c8028f97ccf2fd6c4a28c8e126cda002b6b0564ea5200da5c77db4cceb7464` |
| 14 | `def` | [mkPermInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/mkperminv--16491ee0c50821c1e549a4b3.md) | 94 | `declaration-track:16491ee0c50821c1e549a4b37b422f0ae534d94538b4c5eb2ad5e9f70575f584` |
| 15 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarInfo.Variant66a903a24db503ca20ab0854c9eafc346161eba09248a0b65dc1a5d562c66cf8.Int.Internal.Linear.Poly.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-varin--5d21e507e837b4d667d9bd83.md) | 100 | `declaration-track:5d21e507e837b4d667d9bd8357ad8d6dfd0e45f8cb1d73e6fc0f85d6da0d1a14` |
| 16 | `def` | [DvdCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/dvdcnstr-reorder--898b62cc2408780296359d2a.md) | 105 | `declaration-track:898b62cc2408780296359d2a84c8656d054e0906d3fb794096592946aceb33fb` |
| 17 | `def` | [EqCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/eqcnstr-reorder--1b6ffb7c6281ef6d6b4a34b3.md) | 108 | `declaration-track:1b6ffb7c6281ef6d6b4a34b3763027f7dadd21e22c7a0e945420db5e7665bcb0` |
| 18 | `def` | [LeCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/lecnstr-reorder--80002b6b2b754fc837dd83ad.md) | 111 | `declaration-track:80002b6b2b754fc837dd83ad9e79087e09d1b0184c97095199392288e1536e2d` |
| 19 | `def` | [DiseqCnstr.reorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/diseqcnstr-reorder--76bc57fe6baf772632b8a3dc.md) | 114 | `declaration-track:76bc57fe6baf772632b8a3dca0a052b1759246302230e4473cdc435c21a1d6af` |
| 20 | `def` | [reorderVarMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/reordervarmap--e8d32c186be65ee08c5cb228.md) | 117 | `declaration-track:e8d32c186be65ee08c5cb228d4d6db176ce4266015ac68dcc8b2c0edc6cffb22` |
| 21 | `def` | [reorderDiseqSplits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/reorderdiseqsplits--686e4d04a6bc25608587b4a6.md) | 124 | `declaration-track:686e4d04a6bc25608587b4a6d49cfa416476435ccf6ad3bb49c6cb5dc578342c` |
| 22 | `def` | [reorderVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/declarations/reordervars--f54478bc4dc90b358521e995.md) | 130 | `declaration-track:f54478bc4dc90b358521e995848764b6f54047b31c9aeebed438508852a32db9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
