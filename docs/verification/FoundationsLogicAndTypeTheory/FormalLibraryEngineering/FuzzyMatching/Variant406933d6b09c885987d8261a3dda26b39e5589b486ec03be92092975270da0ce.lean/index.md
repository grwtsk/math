# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FuzzyMatching.Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d827b5e04c318f928151524558c9ab3cda3245ca",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d827b5e04c318f928151524558c9ab3cda3245ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.Completion.CompletionUtils` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterateLookaround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/iteratelookaround--126dfe9dcd9f297cca13731c.md) | 39 | `declaration-track:126dfe9dcd9f297cca13731cdb60075e5a1582b74a40e2f9a656bc644cdbd2ce` |
| 2 | `def` | [containsInOrderLower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/containsinorderlower--01522ebb03a43188b616a71a.md) | 52 | `declaration-track:01522ebb03a43188b616a71ae023d628412384b7bd0e046b4aaf7448080ffa40` |
| 3 | `inductive` | [CharType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/chartype--fa863af00440d24d4eb41cce.md) | 74 | `declaration-track:fa863af00440d24d4eb41cce78ca27cb5e8edf1901b4af415f2caa762afe9f1c` |
| 4 | `def` | [charType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/chartype--b0277573bb1187a38dee3079.md) | 77 | `declaration-track:b0277573bb1187a38dee30791fb9ecfd60c4e649d95451435bdd9178a815a894` |
| 5 | `inductive` | [CharRole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/charrole--b11ffbead2aad574b8937ce8.md) | 87 | `declaration-track:b11ffbead2aad574b8937ce83aa2e085f8a0b1a76f207e715905bf9d55551b96` |
| 6 | `def` | [charRole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/charrole--ba5ec126592319baf7a81c01.md) | 91 | `declaration-track:ba5ec126592319baf7a81c01c7f417349be9bea17801e24c71672ea95d354cb3` |
| 7 | `def` | [stringInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/stringinfo--b1b29ee0a6e2a47f7f687037.md) | 104 | `declaration-track:b1b29ee0a6e2a47f7f6870374bde430d0987e44ab9cd0d3f9cd4ef9a54f17807` |
| 8 | `structure` | [Score](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score--264585181615676de5c81983.md) | 109 | `declaration-track:264585181615676de5c81983acf5aea13ef5cd1b15ebf60207b3d21727fb659f` |
| 9 | `def` | [Score.awful](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-awful--3fbf1e8fe8d02f6e2fe51af6.md) | 114 | `declaration-track:3fbf1e8fe8d02f6e2fe51af6343837d863186c23979ea1a189f11692633f1aad` |
| 10 | `def` | [Score.isAwful](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-isawful--2e3697cc2e80facd79d0dc5c.md) | 117 | `declaration-track:2e3697cc2e80facd79d0dc5c45b8f85eb200ab1ccf1681a7e406727491d069c9` |
| 11 | `def` | [Score.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-map--ce66edd80622123ada2587c0.md) | 119 | `declaration-track:ce66edd80622123ada2587c03eaa59166f2160a49b00dc1cfd4899e9b2f88e97` |
| 12 | `def` | [Score.toInt16?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-toint16--9417ce6dc287ff245a5606d9.md) | 123 | `declaration-track:9417ce6dc287ff245a5606d9c85ff0085a876b4bb2add67def2160ae0f46c30a` |
| 13 | `def` | [Score.toInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-toint--716ab81f3361f51a6fa303f7.md) | 130 | `declaration-track:716ab81f3361f51a6fa303f7953af3d27d8ad30eddb07d82eeb4e61d5f160f3a` |
| 14 | `def` | [Score.ofInt16!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/score-ofint16--ada1e9c700e9568c262d5581.md) | 134 | `declaration-track:ada1e9c700e9568c262d5581e301d2430a30381f81ae344660f49c8c9ba95bde` |
| 15 | `def` | [selectBest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/selectbest--63ce587cec8ad9e312ea5996.md) | 139 | `declaration-track:63ce587cec8ad9e312ea599634e76e3a587551d6224bb6ab9840f56f050f67a7` |
| 16 | `def` | [fuzzyMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/fuzzymatchcore--5c6ee22c49a8e86d3edded65.md) | 147 | `declaration-track:5c6ee22c49a8e86d3edded654d8639e5062f0db0ea0044fa2daeaeb436f6c3d5` |
| 17 | `def` | [fuzzyMatchScore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/fuzzymatchscore--edc7118132cdf41aa738b252.md) | 278 | `declaration-track:edc7118132cdf41aa738b2522ac5417f490c8e3dda8cc407566fac6a8141f209` |
| 18 | `def` | [fuzzyMatchScoreWithThreshold?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/fuzzymatchscorewiththreshold--7bedb1a4d9d48c7acb0d8dcc.md) | 304 | `declaration-track:7bedb1a4d9d48c7acb0d8dcc6afc9b311001a91874930e1a626c7ff98e92de13` |
| 19 | `def` | [fuzzyMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FuzzyMatching/Variant406933d6b09c885987d8261a3dda26b39e5589b486ec03be92092975270da0ce.lean/declarations/fuzzymatch--bf95f424d4091404fd83fa89.md) | 310 | `declaration-track:bf95f424d4091404fd83fa8993037917a3024091eafa55237b637fb74a43833d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
