# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44004c56c05ec9df93ae585c6441944352ddeab1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44004c56c05ec9df93ae585c6441944352ddeab1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.CongrTheorems` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.SimpTheorems` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Label](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/label--d12e898c8b778b1021a67fd2.md) | 21 | `declaration-track:d12e898c8b778b1021a67fd25a34bbb81b1bd801bbb0bc02b9a9447312080def` |
| 2 | `def` | [getSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/getsimpargs--f6db030c0ef013b1e326770a.md) | 32 | `declaration-track:f6db030c0ef013b1e326770aff331275ebccddb61f2721c9d0dd1e6de3d29426` |
| 3 | `def` | [countHeadCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/countheadcoes--69a9409489ed9d90c8c2e996.md) | 43 | `declaration-track:69a9409489ed9d90c8c2e996744b8eb07083750d68d6e8af6a18312409d19e74` |
| 4 | `def` | [countCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/countcoes--1dc50873391a0dc282d038f8.md) | 51 | `declaration-track:1dc50873391a0dc282d038f859de153ad42b7a335f38f26e5e1fab48bfb4b3e6` |
| 5 | `def` | [countInternalCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/countinternalcoes--6949c921c1ba70fce38461d7.md) | 63 | `declaration-track:6949c921c1ba70fce38461d7622bce8535df4e77f911c904a42e7ada8f12a640` |
| 6 | `def` | [classifyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/classifytype--745c818c420ed733aab24c8e.md) | 67 | `declaration-track:745c818c420ed733aab24c8e03f943b6cae0d1eb2bccfc39261b5c85b9d90580` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/initialize--6df867a5e6a4c736a49ee473.md) | 97 | `declaration-track:6df867a5e6a4c736a49ee473ae11283aff5eb34b1e6252f10cbaf0dad0fafdf3` |
| 8 | `structure` | [NormCastExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/normcastextension--ad0034b8ab398adda5039dd2.md) | 103 | `declaration-track:ad0034b8ab398adda5039dd2aa171de2f7683e924af7edaa4ff5de0d291d45e4` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/initialize--814534ac39308f55567fa1f2.md) | 113 | `declaration-track:814534ac39308f55567fa1f241e91446ad31b76833036d075e37700f2ac8c8ea` |
| 10 | `def` | [addElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/addelim--486fdab4c15240cad348cc0c.md) | 120 | `declaration-track:486fdab4c15240cad348cc0ce06e11e5446a513e17640bf370929dc51c7e4280` |
| 11 | `def` | [addMove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/addmove--1aeadada1255dd1719690e89.md) | 125 | `declaration-track:1aeadada1255dd1719690e8994e658b4c57e56c807189c5ec47189dae5b71a8d` |
| 12 | `def` | [addSquash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/addsquash--ea69ec75295a214b308bf112.md) | 132 | `declaration-track:ea69ec75295a214b308bf1123bcca47993ce0a143a7f8251d78997a7957850e5` |
| 13 | `def` | [addInfer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/addinfer--3a91947c3e605cacc3d09020.md) | 144 | `declaration-track:3a91947c3e605cacc3d09020cae76f18acf900064642164da1d6f42d007c7483` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/syntax--07105ccfc62bc303971d2a4f.md) | 154 | `declaration-track:07105ccfc62bc303971d2a4fc1c41a332c5b7f258e00201c5eeccb1fdfbe5468` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/syntax--bc69dc77c25f569e6194ecd1.md) | 205 | `declaration-track:bc69dc77c25f569e6194ecd19d4fc5b72dea5b66417f5f77d52a9779f60bf2e7` |
| 16 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant07484d2d90a7e92c5b6c46ac3b6aa1614b3faecf8c175700d5c83fcac0a6361f.lean/declarations/initialize--6861a21e38ab8aea3df0aea8.md) | 208 | `declaration-track:6861a21e38ab8aea3df0aea89aa890ff44c3a8965b6d454f163fdad0a02e6891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
