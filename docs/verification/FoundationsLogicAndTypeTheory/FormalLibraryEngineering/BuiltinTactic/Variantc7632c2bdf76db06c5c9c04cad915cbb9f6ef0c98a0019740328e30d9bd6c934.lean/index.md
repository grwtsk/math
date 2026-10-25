# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTactic.Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5251f9943b92d668e7c9ca25c5527fec86b040e0",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5251f9943b92d668e7c9ca25c5527fec86b040e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Solve` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Search` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Search` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.EqCnstr` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.Eq` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatch` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PP` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Intro` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Split` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.PP` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.PP` — import line 26; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.PP` — import line 27; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.ExposeNames` — import line 28; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RenameInaccessibles` — import line 29; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Anchor` — import line 30; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.ShowState` — import line 31; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Config` — import line 32; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Param` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [showStateAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/showstateat--af4af7a44ec82f1a18859fb8.md) | 39 | `declaration-track:af4af7a44ec82f1a18859fb8430e40b5844aa49056d2eb808ee2900a10bb3f3d` |
| 2 | `def` | [evalSepTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalseptactics--bd437f51c09d0ad26de670d7.md) | 47 | `declaration-track:bd437f51c09d0ad26de670d7f4d6011975571feb3d4f175c3c906290616fa66a` |
| 3 | `def` | [evalGrindSeq1Indented](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalgrindseq1indented--832ac8f1947bd86d7d0e3196.md) | 61 | `declaration-track:832ac8f1947bd86d7d0e319628f108bf0b0063953315e65558ade566711c1675` |
| 4 | `def` | [evalGrindSeqBracketed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalgrindseqbracketed--526cd1af8686de60d1775da1.md) | 65 | `declaration-track:526cd1af8686de60d1775da1f295e4f7d5280d2ca826dd76ba32cef734c40d0c` |
| 5 | `def` | [evalGrindSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalgrindseq--c7b6df83d0df1bcb737533fe.md) | 73 | `declaration-track:c7b6df83d0df1bcb737533fe5fbdb0f369b0952819be8a98822b846735f9e3ab` |
| 6 | `def` | [evalDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evaldone--7284f074bd06ea341b7907f3.md) | 76 | `declaration-track:7284f074bd06ea341b7907f31c1f5525333b0c5cf6e6ca4de515c1af10c97e16` |
| 7 | `def` | [evalSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalsorry--ac0957b2faad7205e360a951.md) | 79 | `declaration-track:ac0957b2faad7205e360a951cec8d48e9c7977624e8ea0115ce36f4b42cf11ab` |
| 8 | `def` | [evalSkip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalskip--fa9d9b126190ca64a3fe1178.md) | 84 | `declaration-track:fa9d9b126190ca64a3fe117813c0d8b59e48708cf532a09511a5d69876de4a21` |
| 9 | `def` | [evalShowGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalshowgoals--d67b1fb9987894089823bdea.md) | 87 | `declaration-track:d67b1fb9987894089823bdea2ecb737661d7764a289906d52510d261ebda2961` |
| 10 | `def` | [evalParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalparen--40c6ddf1e6b85b9e55e996f0.md) | 91 | `declaration-track:40c6ddf1e6b85b9e55e996f03edb51208534265eae5f1846c4c5c6203b449464` |
| 11 | `def` | [evalFinish](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalfinish--bb7d30f2cbf241baa4d5b985.md) | 96 | `declaration-track:bb7d30f2cbf241baa4d5b985c50fa253843254568c733548651cd1a31c5a6978` |
| 12 | `def` | [evalCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalcheck--994aa775bb5def46a4f92ba6.md) | 115 | `declaration-track:994aa775bb5def46a4f92ba64410a2f4d20c51c6907ee5ca416e9e387b7a385d` |
| 13 | `def` | [evalLIA](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evallia--68e0924a78cf798c7e849083.md) | 137 | `declaration-track:68e0924a78cf798c7e8490833417393447c1aa76472e58c835366d76b768e797` |
| 14 | `def` | [evalLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evallinarith--1017e7a15601759c5a2e013f.md) | 140 | `declaration-track:1017e7a15601759c5a2e013fc306a3c916c7a755e4af5286f8f8f700159a3dc9` |
| 15 | `def` | [evalRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalring--2f227c72c6eaeae2585c08f3.md) | 143 | `declaration-track:2f227c72c6eaeae2585c08f350eb543ca86a224c77348048d123092b136bbc63` |
| 16 | `def` | [evalAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalac--746882df09063d7718ef831f.md) | 146 | `declaration-track:746882df09063d7718ef831f76302b772b63959c754d4c5bbc22ada8161b2c08` |
| 17 | `def` | [logTheoremAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/logtheoremanchor--d3fb983f281f212b7448b699.md) | 149 | `declaration-track:d3fb983f281f212b7448b69973b58a5087181723e6f126054d13ed536521278b` |
| 18 | `def` | [ematchThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/ematchthms--9b103b1952a881751f876350.md) | 153 | `declaration-track:9b103b1952a881751f876350d6dadc4ceda3556e2d2fcf3466b0c1a1a346c0fb` |
| 19 | `def` | [evalInstantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalinstantiate--0f0d6a74fcabdd8cb5dc9dd8.md) | 162 | `declaration-track:0f0d6a74fcabdd8cb5dc9dd8584ee6e4708b12b68b6bc3f20e7624b3cdbf805d` |
| 20 | `def` | [logAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/loganchor--625c4f319f8e733a91c1e80c.md) | 266 | `declaration-track:625c4f319f8e733a91c1e80c334bfd39b717ff2eee2791e03557d2723657dbb3` |
| 21 | `def` | [split?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/split--412886d925301700307c5e2f.md) | 289 | `declaration-track:412886d925301700307c5e2f03bf541804fa8f0b2c523db564b58fa3dd159aaf` |
| 22 | `def` | [evalCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalcases--17f62aea1fd597f5454d15b3.md) | 298 | `declaration-track:17f62aea1fd597f5454d15b32652c498f3c5496ced9b40d0a4112ea3c049619d` |
| 23 | `def` | [mkCasesSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/mkcasessuggestions--c9d149ca0ea5b6816b5a472d.md) | 332 | `declaration-track:c9d149ca0ea5b6816b5a472da81d4b0d5b972db68275dccd92dd28b0f4708fae` |
| 24 | `def` | [evalCasesTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalcasestrace--17c3f69120bbadf5353b2593.md) | 356 | `declaration-track:17c3f69120bbadf5353b2593d5ec8d0e21bae901c11d96250009f60489601219` |
| 25 | `def` | [evalCasesNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalcasesnext--bfc3491597f6e09a4a24989b.md) | 364 | `declaration-track:bfc3491597f6e09a4a24989b5bfdea15c3a3d6ab2218c4acf65bbe309d8e79e6` |
| 26 | `def` | [evalFocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalfocus--930e243d9efe02f38a83308c.md) | 367 | `declaration-track:930e243d9efe02f38a83308c53cc461f070273829eb16d9de452520f53ddc67a` |
| 27 | `def` | [evalAllGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalallgoals--b8632fc1ef7d8d8ba9103106.md) | 374 | `declaration-track:b8632fc1ef7d8d8ba9103106be2cdd87102d50a6315c34fc8920915b3880a6f3` |
| 28 | `def` | [evalWithAnnotateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalwithannotatestate--0b2a98bead60581620fb198a.md) | 401 | `declaration-track:0b2a98bead60581620fb198a1762930e7239961aca5d220f96d92973f07179f0` |
| 29 | `def` | [evalAnyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalanygoals--995aaa09cba94f08f1a07e48.md) | 405 | `declaration-track:995aaa09cba94f08f1a07e485803a416ac2755c17f641d1681acf0d4996e6fc3` |
| 30 | `def` | [renameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/renameinaccessibles--8e0920b62ae8bf8855a629bd.md) | 422 | `declaration-track:8e0920b62ae8bf8855a629bdec017b13681e514522997b2cef76735503c32438` |
| 31 | `def` | [evalNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalnext--e69b96af886a3315f951900a.md) | 427 | `declaration-track:e69b96af886a3315f951900ac53223762d60c2df73e189bf4e2d34f1c07c832b` |
| 32 | `def` | [findGrindTag?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/findgrindtag--7755a0679dcd1141cfae3a68.md) | 443 | `declaration-track:7755a0679dcd1141cfae3a684d17843638c1222b43463d26a40a8e6882340b3d` |
| 33 | `def` | [getCaseGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/getcasegoal--abe2491a3a1343cf55fe14d1.md) | 454 | `declaration-track:abe2491a3a1343cf55fe14d12393b4b5f97c74b76fbd9bb134b74a2e02cd5c46` |
| 34 | `def` | [evalCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalcase--90d91d426134745548d81a06.md) | 473 | `declaration-track:90d91d426134745548d81a065562496e04d7cdcd8bc29f40f6c1a946baecc1c2` |
| 35 | `def` | [evalNestedTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalnestedtactic--aa18b48390f5a9aec089056c.md) | 486 | `declaration-track:aa18b48390f5a9aec089056c7828159b6b9dff48cb4e1275f9101e3d4e4b55aa` |
| 36 | `def` | [evalFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalfirst--ab9e654fc982772e93ce1e4f.md) | 495 | `declaration-track:ab9e654fc982772e93ce1e4f2c3e44597067b98ed1a0dcc8d2b211edfc5ec743` |
| 37 | `def` | [evalFailIfSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalfailifsuccess--6097663ebf3397167bb035c7.md) | 505 | `declaration-track:6097663ebf3397167bb035c7a35a307fc65a55371145408e7eedc93e2c19b111` |
| 38 | `def` | [evalFail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalfail--e4a0d9aa6e7ae5abc6e54c48.md) | 511 | `declaration-track:e4a0d9aa6e7ae5abc6e54c48167bb2fbbb612c9a7ca0e248f47d3a97c7887b0b` |
| 39 | `def` | [evalRenameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalrenameinaccessibles--f3d7d90b82c843af5b97cd27.md) | 519 | `declaration-track:f3d7d90b82c843af5b97cd27b44d370f1061ef0c71e329565234ef84d75ab524` |
| 40 | `def` | [evalExposeNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/evalexposenames--4db5bd32b12f5e9db88e5868.md) | 525 | `declaration-track:4db5bd32b12f5e9db88e5868888b7d80907f634dcbc32368c9f825582a4a85e3` |
| 41 | `def` | [elabSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/elabsetoption--74af6878cd52d6a97c9a5e1c.md) | 531 | `declaration-track:74af6878cd52d6a97c9a5e1c2fabdd348bb5b11751e23eb818bd8272e0f2615e` |
| 42 | `def` | [elabSetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/elabsetconfig--2fbfd6f4524b9fd98cb4e2a1.md) | 536 | `declaration-track:2fbfd6f4524b9fd98cb4e2a1db13adbbd0768afcd5ea81c22aaf6edef31724b5` |
| 43 | `def` | [elabMBTC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/declarations/elabmbtc--a8648e12ca7f93b41063c42c.md) | 540 | `declaration-track:a8648e12ca7f93b41063c42ca7dd28792712d9beaf6e828132ac1e4f155d42a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
