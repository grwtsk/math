# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqCalcProver.Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d446ded530bb6a45e5e5701126964bdf58ef510f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d446ded530bb6a45e5e5701126964bdf58ef510f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Mem.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/mem-map--1de0a91bac338817322c4843.md) | 32 | `result-track:1de0a91bac338817322c48432c33c6488480f66c7ae4faa4d7ff6a077caa4dca` |
| 2 | `theorem` | [Mem.split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/mem-split--c799323a44b83e11586ee59e.md) | 35 | `result-track:c799323a44b83e11586ee59e3fc0c8ba79fb854aa2efc1ce624711290d8af6c6` |
| 3 | `inductive` | [All](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/all--4f20d8feaaa98ffa8f95c62e.md) | 55 | `declaration-track:4f20d8feaaa98ffa8f95c62e792db6064cc7ff28dd6edf5a6e2fcc9b0a6df1f0` |
| 4 | `theorem` | [split_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/split-cons--4efc0cbc2ab468e41ed6e26c.md) | 62 | `result-track:4efc0cbc2ab468e41ed6e26cf11ebdc82fc2c56dfc759f2b142021e9a9e4d890` |
| 5 | `theorem` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/mem--649ff00464eff971c8c8b27c.md) | 66 | `result-track:649ff00464eff971c8c8b27c468b0c6e7bbe9814423c56d97762feb406bba3f4` |
| 6 | `theorem` | [weaken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/weaken--f29899e923d591e4493ea0e3.md) | 70 | `result-track:f29899e923d591e4493ea0e3f406b3f6d1e0ee28ef81ae6c64d029447c06ebd8` |
| 7 | `theorem` | [in_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/in-self--3ff4df90e1bdec3a0c06aeb0.md) | 75 | `result-track:3ff4df90e1bdec3a0c06aeb07ade65a8961e2ba2dd921f77f4d3e0b820850d14` |
| 8 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/map--263fafb4c7b5c7362414fbe8.md) | 78 | `result-track:263fafb4c7b5c7362414fbe895163c27c5e5bc5f384eec3a149355d24b653771` |
| 9 | `inductive` | [Any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/any--3b6c4f6ba2e8904a869cdc22.md) | 89 | `declaration-track:3b6c4f6ba2e8904a869cdc2244d6dc379696d6acbbc801047b09bf379b3671e0` |
| 10 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/cons--b61c8f08c468c992d14dea84.md) | 96 | `result-track:b61c8f08c468c992d14dea84149dccabcc0fcd9ef5cf937133d4021fc5dc6371` |
| 11 | `theorem` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/mem--73c004fcae17118fab216c99.md) | 100 | `result-track:73c004fcae17118fab216c997cc6f0965017a9471b13575ccff89176daa01b0a` |
| 12 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/map--ba939ac72b54ff299fb18fda.md) | 110 | `result-track:ba939ac72b54ff299fb18fdaa514e96497ec701fcb548896bbe08ff96502a2e0` |
| 13 | `instance` | [instDecidablePred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/instdecidablepred--8cd3e91727cfbec2655d0890.md) | 114 | `declaration-track:8cd3e91727cfbec2655d0890805f6929eafd04e2c413417d5e13bca24f025317` |
| 14 | `def` | [Common](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/common--a01196c082ed39bc0a696d9d.md) | 129 | `declaration-track:a01196c082ed39bc0a696d9d531923dc7e6a593afa37ae59946141b1f836108b` |
| 15 | `theorem` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/mem--c364c1cc6e6de8b734fd3271.md) | 134 | `result-track:c364c1cc6e6de8b734fd3271ae4b30b23467b45ff2a29699847a31d5d1312813` |
| 16 | `theorem` | [sym](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sym--75da27591d9971fae103b1d2.md) | 138 | `result-track:75da27591d9971fae103b1d29bc4f3ca073cbb662f2a16b5c0816cb7f9b5d036` |
| 17 | `instance` | [instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/instdecidable--c5553c6b597e03c63a9d09d1.md) | 144 | `declaration-track:c5553c6b597e03c63a9d09d12b5b3ee07a8f0422ae66072553f4b189878f653b` |
| 18 | `inductive` | [Perm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/perm--f37a7c8e2b48886cb879b3f5.md) | 155 | `declaration-track:f37a7c8e2b48886cb879b3f51bce53dd2a4adf8f990b548d70d233d945def514` |
| 19 | `def` | [sym](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sym--a4280694cf43ffb409816b29.md) | 167 | `declaration-track:a4280694cf43ffb409816b297d52f251a7b81b6da2656f23e70580a32551b6b2` |
| 20 | `def` | [shift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/shift--fa7f001a48a9f69eb1451e95.md) | 171 | `declaration-track:fa7f001a48a9f69eb1451e95005ac644f687ca56a26bed15efb5c1f6ef808ce6` |
| 21 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/map--0aaf282af29c2c1537e4fc98.md) | 175 | `declaration-track:0aaf282af29c2c1537e4fc982d9f6ff2d40f407042339a433fef5777602bcf7f` |
| 22 | `theorem` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/all--1700e9a322a64e3bd09dddf2.md) | 179 | `result-track:1700e9a322a64e3bd09dddf2d86d6a896383bca0fd382b1a001d6370f3995d90` |
| 23 | `theorem` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/any--2fb6cdebd2b7a352d6daf7e7.md) | 183 | `result-track:2fb6cdebd2b7a352d6daf7e70e5ffc8bbcfd6409fd982f36fef0e5fbc8e02778` |
| 24 | `inductive` | [Form](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/form--5e13b1b6f4927de93593c533.md) | 194 | `declaration-track:5e13b1b6f4927de93593c5333818f63924be0f1ef0880c99509c29ce74c7ccfc` |
| 25 | `def` | [Val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/val--79b9ac77613a2624ba592a45.md) | 207 | `declaration-track:79b9ac77613a2624ba592a45c4226d509e453c09d526dc02e769b2e753069bc9` |
| 26 | `instance` | [Val.instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/val-instdecidable--c4ebc7fca516302d199bbf66.md) | 212 | `declaration-track:c4ebc7fca516302d199bbf662062957aea5818bbe66579de0d2fc7925db9c200` |
| 27 | `abbrev` | [Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/valid--08003fb33f6d52c01aa25677.md) | 222 | `declaration-track:08003fb33f6d52c01aa25677b281549ff5e092d70210f6e5983d029efff3d6f6` |
| 28 | `def` | [SC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sc--137853b1cc36c8984ce8483a.md) | 225 | `declaration-track:137853b1cc36c8984ce8483a6db462d4a770caaf92ea4134dfbfe1f710c32ade` |
| 29 | `theorem` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/all--a177e6e75841267656039e50.md) | 230 | `result-track:a177e6e75841267656039e5062e99fda60215fb6318cfa207b95027c705195c4` |
| 30 | `theorem` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/any--3c609f51afffe5126e61234c.md) | 233 | `result-track:3c609f51afffe5126e61234ce1c89275557df810b68fe2d9245cf5ea98e23322` |
| 31 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sum--b694d4c6974bed913774b7b2.md) | 242 | `declaration-track:b694d4c6974bed913774b7b286435f712afad917138f51c12185acd453a53015` |
| 32 | `def` | [Cal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/cal--7fe11e2cac0bb83bfd01bd38.md) | 247 | `declaration-track:7fe11e2cac0bb83bfd01bd38aec19b7f5e782548b584ff66a7fb53f10e285e57` |
| 33 | `def` | [Cal.instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/cal-instdecidable--fa0503e7f05f493536e228f7.md) | 257 | `declaration-track:fa0503e7f05f493536e228f75330cb6446b2e8f7d20f17c1f0edd79df2709129` |
| 34 | `abbrev` | [Prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/prove--efa9e8c52ca4ce6a38efe693.md) | 281 | `declaration-track:efa9e8c52ca4ce6a38efe693524dfa873cb3d81360beedc52ff04ba66f244f24` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/example--14c84ee8fb86a1f490aa48e3.md) | 283 | `declaration-track:14c84ee8fb86a1f490aa48e3375f906b348c90a7bff877437fb295c9b833f267` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/example--19d117d4c7d53f22a17c1026.md) | 284 | `declaration-track:19d117d4c7d53f22a17c102633f692e47e433a9638c88e65d884f012ab1576bb` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/example--42284faab0ffbf8b7e60d8bb.md) | 285 | `declaration-track:42284faab0ffbf8b7e60d8bbaa9e7e1ee0f4b5739b0d27e2160f7e258f9d0110` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/example--b73f82069aace446bf2c23dd.md) | 286 | `declaration-track:b73f82069aace446bf2c23dde65f2af9e71a85804038cac657f7aa39b23faf48` |
| 39 | `def` | [SC'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sc--5ec4b9329eb818962f6da930.md) | 292 | `declaration-track:5ec4b9329eb818962f6da9306c9bf03001c8c16e2fd63eaf42741af999820071` |
| 40 | `theorem` | [Cal_sound_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/cal-sound-complete--bc99b92d28bcfefdc0452628.md) | 295 | `result-track:bc99b92d28bcfefdc0452628e5cf8de525dabb4da7a29b77a2d55efe52c0879c` |
| 41 | `theorem` | [Prove_sound_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/prove-sound-complete--8c52884ddf221bd9cffd7f31.md) | 406 | `result-track:8c52884ddf221bd9cffd7f31289ea715920b1daba96a50f18d9388a1f1558e58` |
| 42 | `inductive` | [Proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/proof--931e5a62c8473abf0919d821.md) | 421 | `declaration-track:931e5a62c8473abf0919d82123973774cf4bbeeac5c8788beb8dac4f4fa44262` |
| 43 | `theorem` | [weaken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/weaken--d4a72c0a181ddb526323320e.md) | 435 | `result-track:d4a72c0a181ddb526323320eb6ba14a7bd618f542fb5d1d4d415460b878b41fa` |
| 44 | `theorem` | [sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/sound--55a7ed5058f4e1af4c6bc244.md) | 446 | `result-track:55a7ed5058f4e1af4c6bc2440d60348e37d5a1c959036c8aea30bd9b7482d89e` |
| 45 | `def` | [Proof'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/proof--87696679c729a629af3bfea9.md) | 456 | `declaration-track:87696679c729a629af3bfea954c12c2c3cde6acc4c47be4a6dd666f5f8a927a1` |
| 46 | `theorem` | [Cal_Proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/cal-proof--2d30ec306c94124afa28888f.md) | 459 | `result-track:2d30ec306c94124afa28888fa46e7337324977a82c92e17a184db3892cae0b0a` |
| 47 | `theorem` | [Proof_sound_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/declarations/proof-sound-complete--d42e0abf56541bfc0be287e4.md) | 501 | `result-track:d42e0abf56541bfc0be287e4e360521a450d2888ca142b9412fe7d2fb500d7b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
