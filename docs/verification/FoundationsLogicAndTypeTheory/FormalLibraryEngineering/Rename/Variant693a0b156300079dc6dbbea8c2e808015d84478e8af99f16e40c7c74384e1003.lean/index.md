# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e8dcf2eeb4abb35f94dc075871e6916076c9558",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e8dcf2eeb4abb35f94dc075871e6916076c9558`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RenameMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/renamemap--a785e6edc4bc657cae2c7093.md) | 25 | `declaration-track:a785e6edc4bc657cae2c7093b502617edaa0defc1e1fda02a1971483c87c8059` |
| 2 | `structure` | [NameEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/nameentry--6c7732cd3db58bc939bc4977.md) | 38 | `declaration-track:6c7732cd3db58bc939bc4977ae04fb2a10c94a0a796f0b022025e2bf9ea21ebf` |
| 3 | `def` | [RenameMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/renamemap-insert--382ec9250460467ab25011ed.md) | 53 | `declaration-track:382ec9250460467ab25011ed1950af1145f240963aabdda788058fa55d1be5ec` |
| 4 | `def` | [RenameMap.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/renamemap-find--70bcf701dc48107e4436b346.md) | 63 | `declaration-track:70bcf701dc48107e4436b346658224e79b9422e2647d101639107fc291e8fb80` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/initialize--221cb5b1dd442249e086cecb.md) | 65 | `declaration-track:221cb5b1dd442249e086cecb38906ec32f3f29ebb519f5ba42bbcbdc2fdbfa20` |
| 6 | `def` | [getRenameMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/getrenamemap--a72dcad10257b6dc3a06a370.md) | 71 | `declaration-track:a72dcad10257b6dc3a06a37092f2f4269339b06ce074ea9dc3b7a3edc97a5ba5` |
| 7 | `def` | [addNameAlignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/addnamealignment--7c7c078ac55b912d1ee2a704.md) | 74 | `declaration-track:7c7c078ac55b912d1ee2a704ca9e93e48a20a189ec48e7858885a3489f1ab027` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/initialize--915aa5dd837eee7e9b61ab0c.md) | 80 | `declaration-track:915aa5dd837eee7e9b61ab0c60bac7e7e3ab72d70be513a3e89ecdaabffaaa71` |
| 9 | `def` | [removeX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/removex--c63ee151243db3e7fd1c1beb.md) | 88 | `declaration-track:c63ee151243db3e7fd1c1bebd10774bea9bc8cd8dbb5f92c75d8a309a868c78a` |
| 10 | `register_option` | [linter.uppercaseLean3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/linter-uppercaselean3--8b4576360d707486135ccb50.md) | 104 | `declaration-track:8b4576360d707486135ccb501737cd4c9e771a8f5415bd218e80c347d7436699` |
| 11 | `register_option` | [align.precheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/align-precheck--e13756ee181f87a2a81a718c.md) | 110 | `declaration-track:e13756ee181f87a2a81a718c9dd711569cfb26d24d55111706c7bd29bfb5ae97` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/syntax--4a1d4c2160e939e84d36907a.md) | 129 | `declaration-track:4a1d4c2160e939e84d36907aaf4f649637601fbc0627d83bdb69a8e4bf381d40` |
| 13 | `def` | [ensureUnused](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/ensureunused--72486dbb73849d2147abfa27.md) | 132 | `declaration-track:72486dbb73849d2147abfa276b77a4393d883bd61e2c2986c4797eaf16d5446a` |
| 14 | `def` | [suspiciousLean3Name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/suspiciouslean3name--341e8e765efee36b16452866.md) | 143 | `declaration-track:341e8e765efee36b164528666c9ee04bcd92f13f53016c764b8c9c2169876cd7` |
| 15 | `def` | [elabAlign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/elabalign--fd89ad5a12049b29cfb0fe37.md) | 155 | `declaration-track:fd89ad5a12049b29cfb0fe370250323f7a7abbf0576c0ff6c254c52c9a85db02` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/syntax--b1a6a49f3e3e84ea324d969b.md) | 187 | `declaration-track:b1a6a49f3e3e84ea324d969bbdc4ff1f2018fa96aced7f8c9cbcb7c0e057a8e5` |
| 17 | `def` | [elabNoAlign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/elabnoalign--bda79a2551735cd93ff49fbf.md) | 190 | `declaration-track:bda79a2551735cd93ff49fbfa537eef66b09871afb2796c1c2b9c19417907333` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/syntax--bb88cc8763068de807b86875.md) | 197 | `declaration-track:bb88cc8763068de807b868754c276eb9571164f0fe83b539ed6de9f8f3cdb948` |
| 19 | `def` | [elabLookup3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/elablookup3--678c4e1c468e9d43c0c33298.md) | 200 | `declaration-track:678c4e1c468e9d43c0c33298b8b7fcc48ada624765a5cb54d5c11a6b0a74b461` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/syntax--27f8eb9971f0fe3cf009bc3b.md) | 222 | `declaration-track:27f8eb9971f0fe3cf009bc3b353e8e17907df534845b693732bdd828adc8649d` |
| 21 | `def` | [elabAlignImport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/declarations/elabalignimport--3fa61c18276645e517cf620e.md) | 227 | `declaration-track:3fa61c18276645e517cf620e201dce48c2132021cf0243dd3cdf37afda882575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
