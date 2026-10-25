# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c89e01fe3333214c4e71d50faf4410a417a9689",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c89e01fe3333214c4e71d50faf4410a417a9689`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.CodeActions` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Util.TermUnsafe` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HoleCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/holecodeaction--683c0abee13128fb3a9b187f.md) | 34 | `declaration-track:683c0abee13128fb3a9b187f000179001911d8e0ac641ede76cff4706508de82` |
| 2 | `def` | [mkHoleCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/mkholecodeaction--09dcfedc7eb4c38919357c26.md) | 39 | `declaration-track:09dcfedc7eb4c38919357c26aa2c932466c93a2529c35aad2b65768c549d04ef` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--6a56f9b400f51f1907c2c4ae.md) | 44 | `declaration-track:6a56f9b400f51f1907c2c4aec08e31437f6a26f5912fcab8e6f064e8cb4c09d9` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--1a583ea34208052973a38de9.md) | 54 | `declaration-track:1a583ea34208052973a38de97185d94928f38e4e4af7269dbb6321247ea0d017` |
| 5 | `abbrev` | [TacticCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/tacticcodeaction--d7672b7ed681a2a6c888cdbf.md) | 68 | `declaration-track:d7672b7ed681a2a6c888cdbf6b32d2ecdd2798bdff5c88e31adc660bbbb44b40` |
| 6 | `abbrev` | [TacticSeqCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/tacticseqcodeaction--eb5ee256c42dfcfcf54adf20.md) | 74 | `declaration-track:eb5ee256c42dfcfcf54adf20fa574713a43e426e8bef8d2cdabeef1e13a9b354` |
| 7 | `def` | [mkTacticCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/mktacticcodeaction--00377b0309e7275c4627ce69.md) | 80 | `declaration-track:00377b0309e7275c4627ce695388fd413127a1187bd473b5256d05a41ac99d03` |
| 8 | `def` | [mkTacticSeqCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/mktacticseqcodeaction--dd0a239ceb9940102cf26b6e.md) | 85 | `declaration-track:dd0a239ceb9940102cf26b6e3dc889fdf37a0e252baf6b117016b4add278eb5c` |
| 9 | `structure` | [TacticCodeActionEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/tacticcodeactionentry--9d66666a41d791ed6146bd26.md) | 90 | `declaration-track:9d66666a41d791ed6146bd26bc206015477ba9288f88dc5d3fee4e82f4559bfd` |
| 10 | `structure` | [TacticCodeActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/tacticcodeactions--7afedb7f308b8224aa46ef85.md) | 98 | `declaration-track:7afedb7f308b8224aa46ef854f68ea8c87189b28e2a10e069a6ec81e68e52961` |
| 11 | `def` | [TacticCodeActions.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/tacticcodeactions-insert--befa86605c9767508f825e98.md) | 106 | `declaration-track:befa86605c9767508f825e980f25e05d8d227f3faadd2c6378bbd9beed99ee66` |
| 12 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--0ea787184b6d8f9d26c80bd1.md) | 115 | `declaration-track:0ea787184b6d8f9d26c80bd1c961726cd284c209f0a95a44535ebb09e40e5202` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--f7c07b8978a7c0f1fa0d1f82.md) | 127 | `declaration-track:f7c07b8978a7c0f1fa0d1f8298421f6610735ed2009e5b79979d271cbae143c4` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/syntax--3bf93d470ae70912c17ff1d1.md) | 154 | `declaration-track:3bf93d470ae70912c17ff1d174b736b84a62fd2dd50e34d044550f15de2a2353` |
| 15 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--efa4a2cb09a2eb7f395e8804.md) | 156 | `declaration-track:efa4a2cb09a2eb7f395e880498ab47df588851ac7d66cf7d7583e7379e7dc2fe` |
| 16 | `abbrev` | [CommandCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/commandcodeaction--9b1c59eb9f5303dcf7f9d5aa.md) | 180 | `declaration-track:9b1c59eb9f5303dcf7f9d5aa95c01cc804cffdad4c302b7daa708c58afc4e57f` |
| 17 | `def` | [mkCommandCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/mkcommandcodeaction--7e909c2757d97cd7e3830f84.md) | 185 | `declaration-track:7e909c2757d97cd7e3830f84f37ecd5949a8739af8f6c1f6649326c6f8f4a577` |
| 18 | `structure` | [CommandCodeActionEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/commandcodeactionentry--063f145419783aa4598d3bc0.md) | 190 | `declaration-track:063f145419783aa4598d3bc085c4e48e6aa7eb8e2a63e63e7f0205eb7b6d6780` |
| 19 | `structure` | [CommandCodeActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/commandcodeactions--ed6bb05449088b40ea0e9f6e.md) | 199 | `declaration-track:ed6bb05449088b40ea0e9f6e86b5537fdec842580fa191154712fc0d01d5f002` |
| 20 | `def` | [CommandCodeActions.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/commandcodeactions-insert--f8cd7304b831af1d4101394c.md) | 207 | `declaration-track:f8cd7304b831af1d4101394c62004400dd6148f619f92a2828349c6ff96d1b20` |
| 21 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--113b66e071001905d0b0db13.md) | 216 | `declaration-track:113b66e071001905d0b0db1312ecab2ee5d0db8c8b7a0a653c0018a2e0e97744` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/syntax--ac6e03cbb6ba7fdc5f9ffb07.md) | 240 | `declaration-track:ac6e03cbb6ba7fdc5f9ffb0776ccd9eb6b5da0dbffc6ca8e73ee1748e454cb0b` |
| 23 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantbd1f2855e51da31a216920103bdb593f51f908de13aba5e5a6125eb14e64d55d.lean/declarations/initialize--b1d20cddbdc589f05dab8acf.md) | 242 | `declaration-track:b1d20cddbdc589f05dab8acf0d0d11c5f77ce00a8a3b30c3ec46a4d67b3de7b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
