# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PP.Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b39f5654eb482791f48bb75ffcd638214ef1b7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b39f5654eb482791f48bb75ffcd638214ef1b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Injective` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Grind.PP` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.PP` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.PP` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.PP` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CastLike` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Model` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Goal.ppENodeRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goal-ppenoderef--3dcae4d1a0b34dac4b14d41c.md) | 22 | `declaration-track:3dcae4d1a0b34dac4b14d41c5a94f220eea289781f9b2a8d3cee1fb856e5ce79` |
| 2 | `def` | [ppENodeRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppenoderef--08ecdb64a455c38afc831519.md) | 30 | `declaration-track:08ecdb64a455c38afc831519afad138a4c617cd97c0f5442b5e000cf4a2515f0` |
| 3 | `def` | [Goal.ppENodeDeclValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goal-ppenodedeclvalue--c074212f85502c6acaec7808.md) | 34 | `declaration-track:c074212f85502c6acaec7808ed84d58024140eb1cf3ae7b289614596472f4932` |
| 4 | `def` | [Goal.ppENodeDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goal-ppenodedecl--631b99fb38c5f948c96928a3.md) | 49 | `declaration-track:631b99fb38c5f948c96928a37a86e6043565850aece30952494926046613ccc0` |
| 5 | `def` | [Goal.ppState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goal-ppstate--185c46fb190ed3deaed6430b.md) | 64 | `declaration-track:185c46fb190ed3deaed6430b0caf97d66cd61154d1260ed1af416369cd71f7bc` |
| 6 | `def` | [ppGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppgoals--e4425487e1457a1ead0d9cc1.md) | 75 | `declaration-track:e4425487e1457a1ead0d9cc1da1b02af2c5953fb963bb899cfff00a77794fc64` |
| 7 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/m--d236502195f48197ca6b0f3e.md) | 82 | `declaration-track:d236502195f48197ca6b0f3e6bb175b81014e66b54628393104c9125d888dc19` |
| 8 | `def` | [pushMsg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/pushmsg--30b3b3fa55937a9b3684031f.md) | 84 | `declaration-track:30b3b3fa55937a9b3684031fddddae1ae4e9807b5ecd7a58aa7be9b445aa39bc` |
| 9 | `def` | [ppExprArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppexprarray--7415a8bcdc7da3ea16be6557.md) | 87 | `declaration-track:7415a8bcdc7da3ea16be65572974390f55490bc8f959f09880f32d8b16904d92` |
| 10 | `def` | [isGadget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/isgadget--a1d902ac68a13640982b2270.md) | 97 | `declaration-track:a1d902ac68a13640982b2270cdaf6860c4531daf9f3ee82bd42174b6fc001e5e` |
| 11 | `def` | [isBuiltin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/isbuiltin--047cb5a594c3d2d024aa159f.md) | 100 | `declaration-track:047cb5a594c3d2d024aa159f6e58cd1167d3632355340f08bb0694f2c20c4de6` |
| 12 | `inductive` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/result--a0e1b5a15244d4e4883fbf06.md) | 104 | `declaration-track:a0e1b5a15244d4e4883fbf06cdb2a482d2420c5c644a1de523a8a44606fed605` |
| 13 | `def` | [Result.and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/result-and--f353ef2340e08c04bda0ab38.md) | 108 | `declaration-track:f353ef2340e08c04bda0ab38cefd35d3941cfae573b196e40c025a78d9fff69d` |
| 14 | `def` | [isArithOfCastLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/isarithofcastlike--cbeb32406bcaf5f149acb8d6.md) | 119 | `declaration-track:cbeb32406bcaf5f149acb8d660b7433b5056a0c23b8859d123ae55a162f91f0a` |
| 15 | `def` | [isSupportApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/issupportapp--4e91eb6bbe8e830c78bef825.md) | 138 | `declaration-track:4e91eb6bbe8e830c78bef82575c3854c1c3c4a68ad9affc03134bb6dbb046beb` |
| 16 | `def` | [ppEqc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppeqc--00693abaf7566cb36d956414.md) | 150 | `declaration-track:00693abaf7566cb36d956414509f74e782e8df43bf7bb731e67051faa33431dc` |
| 17 | `def` | [ppEqcs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppeqcs--ac45d01a71afcc8206074e39.md) | 153 | `declaration-track:ac45d01a71afcc8206074e39ce0a8bc781211c6bac6782e3e7c05e5f56731873` |
| 18 | `def` | [ppEMatchTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppematchtheorem--8cb56c9f5bed4626aad61dcb.md) | 188 | `declaration-track:8cb56c9f5bed4626aad61dcb5306f42e0a3919c60edcea6d3453f0defdacafab` |
| 19 | `def` | [ppActiveTheoremPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppactivetheorempatterns--5128889a55fa32e7bcd2b58b.md) | 192 | `declaration-track:5128889a55fa32e7bcd2b58b972551a41b9b0af3fb97008476d24497f85664b0` |
| 20 | `def` | [Arith.Cutsat.pp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/arith-cutsat-pp--3576db158cb961103925a442.md) | 199 | `declaration-track:3576db158cb961103925a442910f1f2c4286f2444253de331402b040d1d6ed97` |
| 21 | `def` | [ppCutsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppcutsat--1346b343e663a7b1a9ac1746.md) | 213 | `declaration-track:1346b343e663a7b1a9ac1746065ad176f2a580edf37439bf9ce2d1ed1b1cf6e3` |
| 22 | `def` | [ppCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppcommring--fd63e8baa1192ef7205bcd03.md) | 217 | `declaration-track:fd63e8baa1192ef7205bcd03385d9bb85e7adf036b36d916e195969c72924115` |
| 23 | `def` | [ppLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/pplinarith--7daf6c657e05b205194f3b76.md) | 221 | `declaration-track:7daf6c657e05b205194f3b7613f941c05b7824321b5806d4b600696cebfb1796` |
| 24 | `def` | [ppAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppac--5a5127dd969d3b2367178a9c.md) | 225 | `declaration-track:5a5127dd969d3b2367178a9caaf36b3d575db8b9710e4a67c56d0dba2f10236c` |
| 25 | `def` | [ppThresholds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppthresholds--f586493c4e771f0098355b4a.md) | 229 | `declaration-track:f586493c4e771f0098355b4a2908d38d62e54faf4d2d42c00d7a9ceba045dec6` |
| 26 | `def` | [ppCasesTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/ppcasestrace--9096d63e26d27235612a915a.md) | 252 | `declaration-track:9096d63e26d27235612a915aedaa94a74249a98fa0678837516e33f1fd3fb6fd` |
| 27 | `def` | [goalDiagToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goaldiagtomessagedata--ee2215a88cd6ccdc7acac39c.md) | 262 | `declaration-track:ee2215a88cd6ccdc7acac39cc3491718c9466806bed6886c4cfd91ed9af988b6` |
| 28 | `def` | [goalToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/declarations/goaltomessagedata--6a78c26ac154fe34288e9e34.md) | 279 | `declaration-track:6a78c26ac154fe34288e9e3446740c65ccf2bb429c5168ff91e3f44d63d693ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
