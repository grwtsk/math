# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cont.Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cd59f4dfad992ef183b27780fedf3d0c643f0b8",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cd59f4dfad992ef183b27780fedf3d0c643f0b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Lawful` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Congr` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Except` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Control.OptionT` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonadCont.Label](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/monadcont-label--0edccd63033346c386dd1757.md) | 31 | `declaration-track:0edccd63033346c386dd175770ea746d2ad94536b14ec9d32a848d2f167588c5` |
| 2 | `def` | [MonadCont.goto](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/monadcont-goto--0a1001735db3e024fc29d3cc.md) | 34 | `declaration-track:0a1001735db3e024fc29d3cc8307c587630d29501cf71b888c61fda413341df1` |
| 3 | `class` | [MonadCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/monadcont--7104f8141677f068d1cdad4a.md) | 37 | `declaration-track:7104f8141677f068d1cdad4a146355e528da63b021ecffeb46d1d1c6dfd115f6` |
| 4 | `class` | [LawfulMonadCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/lawfulmonadcont--d9ea4517075af1db6875987b.md) | 42 | `declaration-track:d9ea4517075af1db6875987bd4d814e0b0e54621dd2a7ce05139db0bd208f758` |
| 5 | `def` | [ContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/contt--09a2464d12e56e733e6ad971.md) | 52 | `declaration-track:09a2464d12e56e733e6ad971360dbe4a21ddc519ae45ac968e2c776576f3b4f1` |
| 6 | `abbrev` | [Cont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/cont--0286e304f0dfdb7688eaafd9.md) | 55 | `declaration-track:0286e304f0dfdb7688eaafd92cf1a5c0cb60c9526d4b6ad4f780de691cef4255` |
| 7 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/run--75b0328518a1d0b11aca0c90.md) | 64 | `declaration-track:75b0328518a1d0b11aca0c903fe8c56ad00abf8f40b55c87a75380f2c70d677a` |
| 8 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/map--0c65493413e2e66777e72704.md) | 67 | `declaration-track:0c65493413e2e66777e727044b0177eada20380b590e063410215e9d94e528a8` |
| 9 | `theorem` | [run_contT_map_contT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/run-contt-map-contt--082e25755cc3440d4e1c87e9.md) | 70 | `result-track:082e25755cc3440d4e1c87e9cc9642ad45dcb309316badf60b8c949088ebd3b1` |
| 10 | `def` | [withContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/withcontt--1a90f9ea490810ccc1c7e935.md) | 73 | `declaration-track:1a90f9ea490810ccc1c7e93520bbbbcbfd040fae15be22ec2f69eebfcaadbeb4` |
| 11 | `theorem` | [run_withContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/run-withcontt--b0194aa9b5dd7b826cde4683.md) | 75 | `result-track:b0194aa9b5dd7b826cde4683cdea1cf357e5a1af1ffe2593c6cf58cec956656f` |
| 12 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/ext--0a82841bc557fabba7b243a6.md) | 80 | `result-track:0a82841bc557fabba7b243a6c3f9da83d890e8d13aa87a4bf975a7788c9a0f99` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--60ceae8220aa673501f4453f.md) | 83 | `declaration-track:60ceae8220aa673501f4453f2e686a60787fc91d2ccc0c826766ab2fca2aa2da` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--a7764f38b562f8bf68558acf.md) | 87 | `declaration-track:a7764f38b562f8bf68558acf1b183c4df22fe8dcb8df7a4a488ad8c7ed19c6de` |
| 15 | `def` | [monadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/monadlift--cc19693a7bdd950585c3440f.md) | 92 | `declaration-track:cc19693a7bdd950585c3440fe395789857b2c760061e029b68b9a7cd85926427` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--a8c55ab93255d25c8d1e6641.md) | 94 | `declaration-track:a8c55ab93255d25c8d1e6641d3caeb2c0b01b777f454d7c369bc74bfe11005ad` |
| 17 | `theorem` | [monadLift_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/monadlift-bind--104bd89f5cd0feab70c30ba1.md) | 97 | `result-track:104bd89f5cd0feab70c30ba1de7ae127c34d465b0487ce1c38abe41cd3cdab21` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--c9d2caaf2391b4861d36e75c.md) | 103 | `declaration-track:c9d2caaf2391b4861d36e75c14c7cc624c0f6ef0b2f690e7b5ed516ed455f7fd` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--e4a2ddef5a31bb5a82bc1368.md) | 106 | `declaration-track:e4a2ddef5a31bb5a82bc136857165159d537d63d6bd8cd9759ae7a89f27bf579` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--61694cc7dde19e4dfbfeee62.md) | 111 | `declaration-track:61694cc7dde19e4dfbfeee626b642a1efb501ba6e45cd3d48908647f1bd21030` |
| 21 | `def` | [ExceptT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/exceptt-mklabel--40884011bc60c5c9a9715814.md) | 122 | `declaration-track:40884011bc60c5c9a9715814b44a2f610f26e9a2764e3d1bdc048848c1166ae2` |
| 22 | `theorem` | [ExceptT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/exceptt-goto-mklabel--21d769a2016b17519d53841f.md) | 125 | `result-track:21d769a2016b17519d53841f81e359cec60de970a41889cb47c9909975e01514` |
| 23 | `def` | [ExceptT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/exceptt-callcc--fd50dff1c3bcc8bae220cca9.md) | 129 | `declaration-track:fd50dff1c3bcc8bae220cca9765cff14ffc64d598bba844109ef46d45d3c6580` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--91589c96c6afb61a05096510.md) | 133 | `declaration-track:91589c96c6afb61a05096510730e0da98a38c46f3555649c112649e5553fff4e` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--c20c07d1c097b8fb46cce0dc.md) | 136 | `declaration-track:c20c07d1c097b8fb46cce0dc1d0c839e575dcb82b84e862adbd766d8c1e37c79` |
| 26 | `def` | [OptionT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/optiont-mklabel--ec4b80c7f00757a80443a0db.md) | 148 | `declaration-track:ec4b80c7f00757a80443a0db3d5da4534bc0d45e50d6e8db53893282a9986fe4` |
| 27 | `theorem` | [OptionT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/optiont-goto-mklabel--ca5be278ae4b375e432181a2.md) | 151 | `result-track:ca5be278ae4b375e432181a26a4719d58e277176deb50492b7abc3889c0a13a3` |
| 28 | `def` | [OptionT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/optiont-callcc--711cd37177eedf0a1edf427b.md) | 155 | `declaration-track:711cd37177eedf0a1edf427b69d245e6813ae2f52801a7e72e794053d9eb3092` |
| 29 | `lemma` | [run_callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/run-callcc--7f4edb4a5b24104068773ac4.md) | 160 | `result-track:7f4edb4a5b24104068773ac4a12d06b6ae439b46ab61667543be6aac700de651` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--e350b15e0eaa6b7171820565.md) | 163 | `declaration-track:e350b15e0eaa6b71718205650624f388c8c13779758483ec34fccbf9723ba594` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--e4b9ef2162debeeec4c463d1.md) | 166 | `declaration-track:e4b9ef2162debeeec4c463d1f720d13de50fb546fd092f8f9b7dfaf975b5d714` |
| 32 | `def` | [WriterT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-mklabel--8d5e2489835be438da8bd186.md) | 183 | `declaration-track:8d5e2489835be438da8bd1869d817ade09a74d469c2ae8b8e9918099571055a0` |
| 33 | `def` | [WriterT.mkLabel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-mklabel--ebc5a041d32a2c3901f9ab7c.md) | 186 | `declaration-track:ebc5a041d32a2c3901f9ab7c6f17d175f86599f09003f9589c36567127bf1248` |
| 34 | `theorem` | [WriterT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-goto-mklabel--c342f372dda3043ce373c795.md) | 189 | `result-track:c342f372dda3043ce373c7955a63f87bc12b92269370afbc0d679ba64ae7efbf` |
| 35 | `theorem` | [WriterT.goto_mkLabel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-goto-mklabel--b0f640c55e6077f2118404f0.md) | 192 | `result-track:b0f640c55e6077f2118404f076f245d6b590da74f2d316d70747fac8a5a13039` |
| 36 | `def` | [WriterT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-callcc--2741e69902a3da21a1b2b484.md) | 195 | `declaration-track:2741e69902a3da21a1b2b4843f0b645a967237fe1cc7c5ce4cc058d2c0934dfd` |
| 37 | `def` | [WriterT.callCC'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/writert-callcc--9106a2fabf956f27d9961752.md) | 199 | `declaration-track:9106a2fabf956f27d996175205f023ccbb39e693edf6c95d8a34b23e31db34b6` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--7aaeda688dad7813a76733fc.md) | 206 | `declaration-track:7aaeda688dad7813a76733fcdfcbbd4f283edbeb10eb21a8e92541dbf530fd71` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--9a12dc522d1112dfbcdf29aa.md) | 209 | `declaration-track:9a12dc522d1112dfbcdf29aa8259f60135e51e4b9af1930e75f2261ecdaea711` |
| 40 | `def` | [StateT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/statet-mklabel--664889200b4de24aa23a141b.md) | 212 | `declaration-track:664889200b4de24aa23a141b559a1edf3ff6426b8017b4fab7dd3c5b55c21161` |
| 41 | `theorem` | [StateT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/statet-goto-mklabel--c5c16c152886aa52a1679424.md) | 215 | `result-track:c5c16c152886aa52a16794241b2e00e174f621413eae7c53e10997fe512efb4e` |
| 42 | `def` | [StateT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/statet-callcc--f184725453659ef6fecc2e99.md) | 218 | `declaration-track:f184725453659ef6fecc2e996f739c28b5bcb45b3d79d4c765bb79fe0050f2ac` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--56173149777e6b663a012966.md) | 222 | `declaration-track:56173149777e6b663a012966784644f57aa2068fd1a3b3840fcc58861ec7c02b` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--9a3b8a447eaaf366d5edac04.md) | 225 | `declaration-track:9a3b8a447eaaf366d5edac04280efd9936e409ffef11413ae2fb9fa0c96de837` |
| 45 | `def` | [ReaderT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/readert-mklabel--c68ea66e3294afe770b37eb7.md) | 238 | `declaration-track:c68ea66e3294afe770b37eb7d4c61fdb4884e428c3a6afebb76a5986dbe8843c` |
| 46 | `theorem` | [ReaderT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/readert-goto-mklabel--6c9c31994b352f3da6ac5ffc.md) | 241 | `result-track:6c9c31994b352f3da6ac5ffcc0227327437a7013718e69756916ce2471ec72ce` |
| 47 | `def` | [ReaderT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/readert-callcc--9072b41f84361f5f9af4720c.md) | 244 | `declaration-track:9072b41f84361f5f9af4720ca62140f130506d4e0c8f6c408b080096568e641e` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--16509db36f1baacb5b478205.md) | 248 | `declaration-track:16509db36f1baacb5b4782054f170484ac7e811f7d149681b383b17c559d8416` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/instance--1cad8d085dba1423bca55966.md) | 251 | `declaration-track:1cad8d085dba1423bca55966758bb0a5c9edd4305aeadb55f33d64ab5d672035` |
| 50 | `def` | [ContT.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant84cba6c89e460e873d697c4fbf5f204208dfc830a8db7f0f3f08edf81e485671.lean/declarations/contt-equiv--44c6c4d5afd089e0cd0857ea.md) | 262 | `declaration-track:44c6c4d5afd089e0cd0857ea4b2fad0629647fef42399b2f0495dc97bd769a9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
