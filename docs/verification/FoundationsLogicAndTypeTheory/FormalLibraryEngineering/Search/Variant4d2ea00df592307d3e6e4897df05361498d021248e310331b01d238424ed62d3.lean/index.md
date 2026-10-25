# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad49df7d19532274d87845c0db03d8affbb27562",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad49df7d19532274d87845c0db03d8affbb27562`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IneqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/ineqcnstr-throwunexpected--50d1b65f489f8107b6c320db.md) | 22 | `declaration-track:50d1b65f489f8107b6c320dbdd04731e2314e602d490838878ddb248df6ca037` |
| 2 | `def` | [DiseqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/diseqcnstr-throwunexpected--2403b5994bdbc6017727bfd9.md) | 25 | `declaration-track:2403b5994bdbc6017727bfd963b08ca8b4653a5cb3172c82bf7f1674dd9eb6ee` |
| 3 | `def` | [EqCnstr.throwUnexpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/eqcnstr-throwunexpected--de81f916c34ce5449843bdcd.md) | 28 | `declaration-track:de81f916c34ce5449843bdcd1eff437818dd306700890df9740c7a23927621a0` |
| 4 | `def` | [checkIsNextVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/checkisnextvar--c89666c70cff0c74f76cc23f.md) | 31 | `declaration-track:c89666c70cff0c74f76cc23feb363bb44d777378d0f49256130e042188180be4` |
| 5 | `def` | [traceAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/traceassignment--18e51d09f93a31a82e397ee8.md) | 35 | `declaration-track:18e51d09f93a31a82e397ee85378bef0d4c1ecba251f40d1a3fe5aea4745f3c1` |
| 6 | `def` | [setAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/setassignment--e73d373e3a15468e2d61910a.md) | 38 | `declaration-track:e73d373e3a15468e2d61910a0f6240139e54c448ba0070b0723c5adba8e79781` |
| 7 | `def` | [getBestLower?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/getbestlower--14d88ff094ea4193c0068fa7.md) | 48 | `declaration-track:14d88ff094ea4193c0068fa7b67bf99ebf536066634d4ba6fba86bf38afe7e43` |
| 8 | `def` | [getBestUpper?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/getbestupper--4bad733328689dd9ddedbe29.md) | 67 | `declaration-track:4bad733328689dd9ddedbe29e8886dfc6b2f935662762c2dcdee017085213eee` |
| 9 | `def` | [getDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/getdiseqvalues--8a2019f959cb7ef588eebce6.md) | 82 | `declaration-track:8a2019f959cb7ef588eebce632d248861a3c637dffd35620f85d4e8562332cd8` |
| 10 | `def` | [findDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/finddiseq--1f9f7bf8702881ad978a9f60.md) | 91 | `declaration-track:1f9f7bf8702881ad978a9f6089771e383bc2aa102dbe91a5ede1509b213cc029` |
| 11 | `def` | [inDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/indiseqvalues--45112c7df5d6285a5f64d39a.md) | 94 | `declaration-track:45112c7df5d6285a5f64d39a06002c56c5ba383de73123352f355d92897bef02` |
| 12 | `def` | [geAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/geavoiding--a55d99ca7310deafc10d58c2.md) | 97 | `declaration-track:a55d99ca7310deafc10d58c287f3d435ed1a8ed4c65322c94bda1dbb1eb4ecdf` |
| 13 | `def` | [leAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/leavoiding--68f0fb6e31a264ce60669c5c.md) | 100 | `declaration-track:68f0fb6e31a264ce60669c5ce1116ad50b81d2c5e1264725abb61dffb5608e99` |
| 14 | `def` | [resolveLowerUpperConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/resolvelowerupperconflict--4357a44ef6d46e33fd52dd58.md) | 103 | `declaration-track:4357a44ef6d46e33fd52dd58ac392f537a1d7468ef036dd23bd27e4c7545cff4` |
| 15 | `def` | [findInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/findint--4d9ca4306b6d97749743ad18.md) | 114 | `declaration-track:4d9ca4306b6d97749743ad186af5644f8ebcfd7da1d1b6522d909acee306e8f0` |
| 16 | `def` | [findRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/findrat--c53f54280ce9e05382617ece.md) | 133 | `declaration-track:c53f54280ce9e05382617ecef88f78e9bdb782db29b72558c3c094972bbc5750` |
| 17 | `def` | [DiseqCnstr.split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/diseqcnstr-split--d9773a5fdca1e2fad4dfb89c.md) | 140 | `declaration-track:d9773a5fdca1e2fad4dfb89cc6569218d1682b9e756b0dd299aa82900ccec407` |
| 18 | `def` | [resolveLowerDiseqConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/resolvelowerdiseqconflict--570db4ed47d99112cfce85a5.md) | 155 | `declaration-track:570db4ed47d99112cfce85a54e29021058f8d812260aaef38ba30f6b32febe28` |
| 19 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/processvar--f5d1f2237641ad2800126f46.md) | 167 | `declaration-track:f5d1f2237641ad2800126f460686d475e7fa3c40ec516a5a680e55175cfc757e` |
| 20 | `def` | [hasAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/hasassignment--f5f5f371d87715c3a0e87396.md) | 219 | `declaration-track:f5f5f371d87715c3a0e87396a4772726f7cbc41a4a3812fcbedaec373a8d874a` |
| 21 | `def` | [findCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/findcase--daf9341bced6071f846aa72a.md) | 222 | `declaration-track:daf9341bced6071f846aa72a97373e033748c2b38476ccfe0b3d73a8fa81087c` |
| 22 | `def` | [resolveConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/resolveconflict--2847236e5c00f3029542c794.md) | 234 | `declaration-track:2847236e5c00f3029542c7942c5156dc8df661ec4000415b9d3dcf5a0fc48c29` |
| 23 | `def` | [resetDecisionStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/resetdecisionstack--647d34055b34ca0516f15134.md) | 251 | `declaration-track:647d34055b34ca0516f15134501e10744d2e9ba2282d93da53919a737fb064c6` |
| 24 | `def` | [assignElimVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/assignelimvars--9bd4c0d99f9d17da2ab1f89e.md) | 260 | `declaration-track:9bd4c0d99f9d17da2ab1f89e4e31f42370082b45913d89cc4315c27bbfa9e14b` |
| 25 | `def` | [searchAssignmentMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/searchassignmentmain--063530350612d2cd7292d6d1.md) | 282 | `declaration-track:063530350612d2cd7292d6d19c15707cc3183d5b6e873addeffecc1f21f987d0` |
| 26 | `def` | [searchAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/searchassignment--106a336baecc59c33f1bcb78.md) | 300 | `declaration-track:106a336baecc59c33f1bcb787444e1a91f3cb10881bb6122210ef93d83f13c56` |
| 27 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/declarations/check--116a0bd06f17331edff97f1e.md) | 311 | `declaration-track:116a0bd06f17331edff97f1e1d89321ba3a2d75f6dd1fb143b0740b2305c1e9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
