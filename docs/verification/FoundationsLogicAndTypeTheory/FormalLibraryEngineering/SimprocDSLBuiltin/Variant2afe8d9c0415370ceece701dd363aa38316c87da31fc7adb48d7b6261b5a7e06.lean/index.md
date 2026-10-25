# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocDSLBuiltin.Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5361af52f22c36a5966efd655e762ec9da8916c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5361af52f22c36a5966efd655e762ec9da8916c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.SimprocDSL` — import line 8; external provider; requires a separately pinned dependency.
- `Init.Sym.Simp.SimprocDSL` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.EvalGround` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Telescope` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabSimprocGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocground--bfe6149235d738a826646fe4.md) | 21 | `declaration-track:bfe6149235d738a826646fe45d25424fbed4818741144536466f9aa20490ec30` |
| 2 | `def` | [elabSimprocTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimproctelescope--9c94d6502b6bfb100683d273.md) | 25 | `declaration-track:9c94d6502b6bfb100683d2738b0b2d5592468f055a1d47a201709257bee878d8` |
| 3 | `def` | [elabSimprocControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimproccontrol--94349b0640f3c90c519ca00c.md) | 29 | `declaration-track:94349b0640f3c90c519ca00c637daa9f026edd1a183006dd29c104e7a43907cd` |
| 4 | `def` | [elabSimprocArrowTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocarrowtelescope--3d589cd90140553af51d047f.md) | 33 | `declaration-track:3d589cd90140553af51d047fbb0b99fa0313ef1876897340fb565225ac40eb25` |
| 5 | `def` | [elabSimprocSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocself--1a654a443c629b2f7dd030ee.md) | 37 | `declaration-track:1a654a443c629b2f7dd030eea95758a92477517fce68fc91daf8a61726c84d5e` |
| 6 | `def` | [elabSimprocNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocnone--b1e9b38c3b757db4739b1aae.md) | 41 | `declaration-track:b1e9b38c3b757db4739b1aaed68728bdcca8610d75f6046cbbf2b51b3b6c6701` |
| 7 | `def` | [elabOptDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elaboptdischarger--75ed07502bff55d4790b2473.md) | 44 | `declaration-track:75ed07502bff55d4790b24732ff145deaa90ed8013208830a063c1c1417855a7` |
| 8 | `def` | [elabSimprocRewriteSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocrewriteset--3b4979a34f4cc679346563a4.md) | 49 | `declaration-track:3b4979a34f4cc679346563a46004fc7009036eece4ea43e147b92b8e0f141ec7` |
| 9 | `def` | [elabSimprocRewriteInline](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocrewriteinline--2f43df7c829ce7ca9170acde.md) | 57 | `declaration-track:2f43df7c829ce7ca9170acde64870b3ff50c8536203c9b6be8d83882e4039b88` |
| 10 | `def` | [elabSimprocAndThen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocandthen--f108704d2924c5fe1aed33cb.md) | 66 | `declaration-track:f108704d2924c5fe1aed33cb9f53ffca772536901d8c04e8db35cb7b061ca03d` |
| 11 | `def` | [elabSimprocOrElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocorelse--833c57a2f6121ee4aea8a88a.md) | 73 | `declaration-track:833c57a2f6121ee4aea8a88a4ca4a15ebe53c80d5d0330c883100211b1ef8eb8` |
| 12 | `def` | [elabSimprocParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabsimprocparen--0cc51c488fb6bd1ae6c0d3bf.md) | 80 | `declaration-track:0cc51c488fb6bd1ae6c0d3bf6b0234d5d609e43a31b702b6203b1e0c3b4e84e4` |
| 13 | `def` | [elabDischSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabdischself--fe679530d86bf40ef9f0a542.md) | 87 | `declaration-track:fe679530d86bf40ef9f0a542db48ace7e3d0f7213b7956efbe190ebbc20b8afc` |
| 14 | `def` | [elabDischNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabdischnone--63884733e391ee4ff71a5431.md) | 91 | `declaration-track:63884733e391ee4ff71a5431a3a30ed1468c8272f672f096fd1d6a3f7f21c7c6` |
| 15 | `def` | [elabDischParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variant2afe8d9c0415370ceece701dd363aa38316c87da31fc7adb48d7b6261b5a7e06.lean/declarations/elabdischparen--60ed721b48c7015ce5242d12.md) | 95 | `declaration-track:60ed721b48c7015ce5242d12136520f2660a4634a7bfadc6967fa233a3004c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
