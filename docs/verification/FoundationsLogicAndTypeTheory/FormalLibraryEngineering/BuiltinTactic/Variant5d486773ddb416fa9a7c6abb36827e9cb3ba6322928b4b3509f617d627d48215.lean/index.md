# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTactic.Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Solve` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Search` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Search` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.EqCnstr` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.Eq` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatch` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PP` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Intro` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Split` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.PP` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.PP` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.PP` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.ExposeNames` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RenameInaccessibles` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Anchor` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.ShowState` — import line 26; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Config` — import line 27; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Param` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [showStateAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/showstateat--55cdd5a6e196f9fda64205d9.md) | 31 | `declaration-track:55cdd5a6e196f9fda64205d9cfa60e33c22090cb5d841a2d2b9c3abf83063b61` |
| 2 | `def` | [evalSepTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalseptactics--f5cbd7bd0f3778e8f27d5162.md) | 39 | `declaration-track:f5cbd7bd0f3778e8f27d5162920783fd9c05314729d9b95d6ab29ee982b05357` |
| 3 | `def` | [evalGrindSeq1Indented](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalgrindseq1indented--26769d504ec9468763e66004.md) | 53 | `declaration-track:26769d504ec9468763e66004ad9d1cb07c73de02d18a5eb54344c79aa2b214b8` |
| 4 | `def` | [evalGrindSeqBracketed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalgrindseqbracketed--42f6fc58564f0eee86db448e.md) | 57 | `declaration-track:42f6fc58564f0eee86db448e5cf4d74d6eb3d00281e22ba0766f872569c98641` |
| 5 | `def` | [evalGrindSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalgrindseq--77faa4009e277ad91c98a6e2.md) | 65 | `declaration-track:77faa4009e277ad91c98a6e28fa2b40f50045262bb0a2075c91b894b1d379d89` |
| 6 | `def` | [evalDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evaldone--b9afef1048e7c4991b812136.md) | 68 | `declaration-track:b9afef1048e7c4991b812136c91074236fbf2af642bba39affb63fc6200e398e` |
| 7 | `def` | [evalSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalsorry--7e9339e0a1347ba366934a40.md) | 71 | `declaration-track:7e9339e0a1347ba366934a40b2d82329f8c2c8f81b15aade50beef12816d1ffd` |
| 8 | `def` | [evalSkip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalskip--207bb17c2a2dabd85ffae927.md) | 76 | `declaration-track:207bb17c2a2dabd85ffae927fc6d1248c7f08b43e80543b829038abae027eba0` |
| 9 | `def` | [evalShowGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalshowgoals--44bc133c75963a2709d84d3a.md) | 79 | `declaration-track:44bc133c75963a2709d84d3ae44136d0fb4f8912f9127ddb398453146fc3ae26` |
| 10 | `def` | [evalParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalparen--eb400fb52b1b97f66e419af3.md) | 83 | `declaration-track:eb400fb52b1b97f66e419af3fc0c7bcf429d543497bac0fc685400d49a5e0ff7` |
| 11 | `def` | [evalFinish](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalfinish--2d6886a18a28d6165ba74d91.md) | 88 | `declaration-track:2d6886a18a28d6165ba74d91bc81f84f03f7d4c8a4ae7c92127042f089fe1f7f` |
| 12 | `def` | [evalCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalcheck--28702105e2478a9e4fd1d738.md) | 107 | `declaration-track:28702105e2478a9e4fd1d738f9fa338e6fefd391dbb4d66e6b51bc63367d5bd5` |
| 13 | `def` | [evalLIA](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evallia--86a5e7a56a88464f71599795.md) | 129 | `declaration-track:86a5e7a56a88464f7159979507097bfd258b18c2d78c1b417a4cf7c7ced233c4` |
| 14 | `def` | [evalLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evallinarith--45bd3c66184860bc6774d757.md) | 132 | `declaration-track:45bd3c66184860bc6774d757dcd912d9e5216e2ebf79808be7cdfc470cee73f5` |
| 15 | `def` | [evalRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalring--5c62352298d042d173320b57.md) | 135 | `declaration-track:5c62352298d042d173320b5741d93c2b9f03fa4fb5522c0115bc08734062c7c4` |
| 16 | `def` | [evalAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalac--fb32e41adc19e5c0f3cd5de8.md) | 138 | `declaration-track:fb32e41adc19e5c0f3cd5de8d50aaf093882ccfd40495b14e3ffd0abe492fb34` |
| 17 | `def` | [logTheoremAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/logtheoremanchor--6e4ec6162b05c133c1a6ebf1.md) | 141 | `declaration-track:6e4ec6162b05c133c1a6ebf11b7dbe49a438e13725cd49469e67adbdc1b2d0fb` |
| 18 | `def` | [ematchThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/ematchthms--0b85b689310d1d6757230e4a.md) | 145 | `declaration-track:0b85b689310d1d6757230e4ac3d88d961491701466830827aa3c3b148a2561ac` |
| 19 | `def` | [evalInstantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalinstantiate--42634a19f29261cf3606e701.md) | 154 | `declaration-track:42634a19f29261cf3606e701aac620358953d5bbcac41b83297f6570f3676c85` |
| 20 | `def` | [logAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/loganchor--cb9919cd55637911dd5b0715.md) | 258 | `declaration-track:cb9919cd55637911dd5b0715d6fa0ce4b5792a9ad6ae8c58996e72c6e6d1cf35` |
| 21 | `def` | [split?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/split--b9ac9ebbc72a78ece452d02c.md) | 281 | `declaration-track:b9ac9ebbc72a78ece452d02c03b72200ec9c1710aff2eaf6b082aba3783530ef` |
| 22 | `def` | [evalCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalcases--e8b3270f9210c982c2498f77.md) | 290 | `declaration-track:e8b3270f9210c982c2498f772878072f7993933d4b78b35e4dac363bf32511aa` |
| 23 | `def` | [mkCasesSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/mkcasessuggestions--722ece010be2aef32b9ea84e.md) | 324 | `declaration-track:722ece010be2aef32b9ea84ea23149c62eeb76da07dbeb455f92dbdb2d31807e` |
| 24 | `def` | [evalCasesTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalcasestrace--570249742e213dc14ade96a7.md) | 348 | `declaration-track:570249742e213dc14ade96a76b803bea14ccf59d4ace498746f914ad576c9f8a` |
| 25 | `def` | [evalCasesNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalcasesnext--7d082682bf2244c0e46b49ed.md) | 356 | `declaration-track:7d082682bf2244c0e46b49ed966556a63e48cc1df1db5336bbde720011b6443f` |
| 26 | `def` | [evalFocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalfocus--0781f04db525162592924230.md) | 359 | `declaration-track:0781f04db525162592924230bb77fd5fb31f9be90353aa0fad3c275a0eef0552` |
| 27 | `def` | [evalAllGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalallgoals--8cb922b46eaf1a22d252fdf6.md) | 366 | `declaration-track:8cb922b46eaf1a22d252fdf67cea6d8d367a895f982a3c9f12600c2ff97bb939` |
| 28 | `def` | [evalWithAnnotateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalwithannotatestate--0ddf57f65ce427077d826d76.md) | 393 | `declaration-track:0ddf57f65ce427077d826d76f4cf46c4de43239298e99be210f270ea6b8f30f9` |
| 29 | `def` | [evalAnyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalanygoals--ffb528bb0166a2a0f4288b6f.md) | 397 | `declaration-track:ffb528bb0166a2a0f4288b6fba791acdadf0d21e7bebe8cd1b2233043164ec4b` |
| 30 | `def` | [renameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/renameinaccessibles--a434bbd384d6e6cca00096f5.md) | 414 | `declaration-track:a434bbd384d6e6cca00096f5976a7647111c435fb06b1daf7f70ccd0d399d0c2` |
| 31 | `def` | [evalNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalnext--2153d99e19eb4bf5076175e8.md) | 419 | `declaration-track:2153d99e19eb4bf5076175e8dc64a067709b993eaeb93708a9daec58271cee93` |
| 32 | `def` | [findGrindTag?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/findgrindtag--d9d50c41cb7da04c2534e757.md) | 435 | `declaration-track:d9d50c41cb7da04c2534e75781c745d46d0dafa8a97b0abdefa2622a85b3ccde` |
| 33 | `def` | [getCaseGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/getcasegoal--806aa877663ab58f7194ab16.md) | 446 | `declaration-track:806aa877663ab58f7194ab164d731f7169fe68f4e2376d7c7a1f8fce94ffc2b9` |
| 34 | `def` | [evalCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalcase--44cbe44813283a215519e2ba.md) | 465 | `declaration-track:44cbe44813283a215519e2ba35b80f4e6d55090196d6472ca9a12832edf067b2` |
| 35 | `def` | [evalNestedTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalnestedtactic--ae923dd1dc9e362d23973ef4.md) | 478 | `declaration-track:ae923dd1dc9e362d23973ef45b38567ee4321b406ad3fff4d11854d971d31c87` |
| 36 | `def` | [evalFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalfirst--4225305b58d21f6ee72174b1.md) | 487 | `declaration-track:4225305b58d21f6ee72174b136b6293935be87d7902c3b39da8465920a33a318` |
| 37 | `def` | [evalFailIfSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalfailifsuccess--b5199f379589d3fc074393ba.md) | 497 | `declaration-track:b5199f379589d3fc074393bad71bffca43a186e58af2fe053998b421150ef552` |
| 38 | `def` | [evalFail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalfail--1d13bab1cda3d5c7a732ca8b.md) | 503 | `declaration-track:1d13bab1cda3d5c7a732ca8bc1c040a52f7922bd81391533be8626283651b95a` |
| 39 | `def` | [evalRenameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalrenameinaccessibles--86b8503025dedc7a899f1f89.md) | 511 | `declaration-track:86b8503025dedc7a899f1f890c7551642442ac3b37ec9fab4e09e42c97856e9f` |
| 40 | `def` | [evalExposeNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/evalexposenames--184d4ffb3d809d52c2019a0b.md) | 517 | `declaration-track:184d4ffb3d809d52c2019a0bc6b9d55e7f23c5781207015999cfd5baf9df966b` |
| 41 | `def` | [elabSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/elabsetoption--5b7b7b37b1f22078aa52ca9f.md) | 523 | `declaration-track:5b7b7b37b1f22078aa52ca9f45fd3caf7496d03ff6c4688d92588ad2b16c5e80` |
| 42 | `def` | [elabSetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/elabsetconfig--4a879d0a669835ea1cd2b363.md) | 528 | `declaration-track:4a879d0a669835ea1cd2b36361fcfe1bd3b89da67aa8fd1dddb178428c2359f4` |
| 43 | `def` | [elabMBTC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/declarations/elabmbtc--bc6b70ef02a8012d34068f3e.md) | 532 | `declaration-track:bc6b70ef02a8012d34068f3eb76775e46624f89000cd170922aa14ca95809166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
