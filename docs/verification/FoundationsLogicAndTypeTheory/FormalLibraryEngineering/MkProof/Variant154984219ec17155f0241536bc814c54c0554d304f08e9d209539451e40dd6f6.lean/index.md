# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkProof.Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfc379783c76d7ad01c62f53e4cc6306991feafd",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfc379783c76d7ad01c62f53e4cc6306991feafd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CC.Datatypes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CC.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/ccm--26b6c6124f3e83f1ae121d4b.md) | 20 | `declaration-track:26b6c6124f3e83f1ae121d4bc4e811c76b10dc89054b2bc91636da028e93aa95` |
| 2 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/run--b046152d72a2a485c95f220d.md) | 26 | `declaration-track:b046152d72a2a485c95f220da4212d8b5676e014f85ceec27962edb5cc9585a1` |
| 3 | `def` | [modifyCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/modifycache--348f00bbd2bc21a57e0b017d.md) | 30 | `declaration-track:348f00bbd2bc21a57e0b017dbe705b8fe2536592374d9a99702c6d42f5f36661` |
| 4 | `def` | [getCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getcache--2dd1723e4d40b820b68eea50.md) | 35 | `declaration-track:2dd1723e4d40b820b68eea5007894d95562837bd3aac972f659a28e961ea4b98` |
| 5 | `def` | [getEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getentry--2d98115b029fdbec7973badb.md) | 39 | `declaration-track:2d98115b029fdbec7973badb777a324881481cb4988ba7c5b4b0d79e1d1ffde2` |
| 6 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/normalize--06e2e6b9d8d26f8fdad60144.md) | 45 | `declaration-track:06e2e6b9d8d26f8fdad60144c5b3afc9ebe5a9a305ad16b9fe3093980e7bba5c` |
| 7 | `def` | [getRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getroot--82f36b3bad396d6cbc0bb82f.md) | 52 | `declaration-track:82f36b3bad396d6cbc0bb82f6a96fcd5842b12b79fc9170f9c095a7e49b033c7` |
| 8 | `def` | [isCgRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/iscgroot--45602b6c5ff46f4225ce66a9.md) | 56 | `declaration-track:45602b6c5ff46f4225ce66a99845bcbda16ed150517181b31f07b2503861e19e` |
| 9 | `def` | [isCongruent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/iscongruent--b5e7a48dceb94b315106bb1a.md) | 65 | `declaration-track:b5e7a48dceb94b315106bb1a425c0f9b456320a45d8b8d468e078fb2e513663a` |
| 10 | `def` | [mkCCHCongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkcchcongrtheorem--e3aa3ec54f056d5f1806e383.md) | 111 | `declaration-track:e3aa3ec54f056d5f1806e383f4095d26acacfe22af28995e30242314d95fe926` |
| 11 | `def` | [mkCCCongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkcccongrtheorem--6d8c6b5ccc54324b593764ab.md) | 131 | `declaration-track:6d8c6b5ccc54324b593764ab19bc674866b4cab7ea4649faa876bfa6fcfb4b64` |
| 12 | `def` | [setFO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/setfo--f9245247222a003e9f6ab905.md) | 137 | `declaration-track:f9245247222a003e9f6ab905ece42062ffbd2afc23b6a19effc516955d2c54aa` |
| 13 | `def` | [updateMT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/updatemt--8ed86a8298cf0d5bb5bc08b8.md) | 142 | `declaration-track:8ed86a8298cf0d5bb5bc08b88a89f9cb3bcc4a952617b62747bca12b6ded4992` |
| 14 | `def` | [hasHEqProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/hasheqproofs--6bbb946207423fae2e068937.md) | 155 | `declaration-track:6bbb946207423fae2e0689374edbdda933ce4ac925d9fafd65aa2672af600ce7` |
| 15 | `def` | [flipProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/flipproofcore--8acca56cc8fcb3968a408e6c.md) | 164 | `declaration-track:8acca56cc8fcb3968a408e6ce0db3301c65cef76b5f90eefcfd11a7c67ef638d` |
| 16 | `def` | [flipDelayedProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/flipdelayedproofcore--915169289b7394b35f730508.md) | 179 | `declaration-track:915169289b7394b35f730508a072b11664b3c845b281485e2d45b094b1ef0a4b` |
| 17 | `def` | [flipProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/flipproof--13573f63c68a33efd9ba7580.md) | 194 | `declaration-track:13573f63c68a33efd9ba75807e2f703dcb3beb6d8780169d1618ea7ce1b7666c` |
| 18 | `def` | [isEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/iseqv--ec6210582a722d040846813d.md) | 201 | `declaration-track:ec6210582a722d040846813d3237e349245337cacc2f71d7968c794e16bab68d` |
| 19 | `def` | [isNotEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/isnoteqv--0e8e865e3f9639b85473a3e5.md) | 210 | `declaration-track:0e8e865e3f9639b85473a3e587cde41090d5c253f864ceb2fc057b514b20f7ad` |
| 20 | `def` | [isEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/iseqtrue--edf1ad67187bd8bf6adb23d5.md) | 218 | `declaration-track:edf1ad67187bd8bf6adb23d510cd47d7d4d67a44a4643be9d841db1c3e54bc04` |
| 21 | `def` | [isEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/iseqfalse--8231cd6f59ee18789e644cf2.md) | 223 | `declaration-track:8231cd6f59ee18789e644cf225722189cba86af4bc9eabe7af28415265ef648e` |
| 22 | `def` | [mkTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mktrans--88f5890060f628274f6acc53.md) | 227 | `declaration-track:88f5890060f628274f6acc5309686154b7ed50463dabc487ff279c890db23fbb` |
| 23 | `def` | [mkTransOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mktransopt--432b964d24be925be816684b.md) | 233 | `declaration-track:432b964d24be925be816684b91febbf256d84bed52083e0daa9a283ebcc72245` |
| 24 | `def` | [mkCongrProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkcongrproofcore--d1d56879c564f3c21b2b2a51.md) | 245 | `declaration-track:d1d56879c564f3c21b2b2a51a4cff054c30adce35caa93c26b975c14ee9b0f9d` |
| 25 | `def` | [mkSymmCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mksymmcongrproof--418c6f1f4a121be4aa9ad9a6.md) | 323 | `declaration-track:418c6f1f4a121be4aa9ad9a656744ee9c63fa4b68c76d6a6034f728a10003b6f` |
| 26 | `def` | [mkCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkcongrproof--9747d92461bef579fe6f2068.md) | 357 | `declaration-track:9747d92461bef579fe6f206861d56a21be621af22abdfd7dcfaebede4795bcc2` |
| 27 | `def` | [mkDelayedProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkdelayedproof--bb71cbb4a96f3138a6375ed9.md) | 364 | `declaration-track:bb71cbb4a96f3138a6375ed923a2cab79a306cc2dbb3d72cf19c64d54cb7cd2d` |
| 28 | `def` | [mkProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkproof--9dc45376a8294156d19a80b2.md) | 386 | `declaration-track:9dc45376a8294156d19a80b2685f9c0a28a419e4b73ad533ca23595400989dab` |
| 29 | `def` | [getEqProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/geteqproofcore--e1fa47bad12ba29ad6fff1e6.md) | 421 | `declaration-track:e1fa47bad12ba29ad6fff1e6afec0882b4683c5dc463a857cec22ddb481a19dc` |
| 30 | `def` | [getEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/geteqproof--465ce4ae474a02c99582fab4.md) | 493 | `declaration-track:465ce4ae474a02c99582fab46fdd6d00ce469e27d418a9c04fcee8476de42ecc` |
| 31 | `def` | [getHEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getheqproof--9750c00aacbec4d832d8c1b1.md) | 499 | `declaration-track:9750c00aacbec4d832d8c1b167741ac767d67804e0b6a618770b99d3f5995b18` |
| 32 | `def` | [getEqTrueProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/geteqtrueproof--f0581e314513e646be60fc36.md) | 504 | `declaration-track:f0581e314513e646be60fc363652a5215930762abe495028b9ffb397ae645fe4` |
| 33 | `def` | [getEqFalseProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/geteqfalseproof--3a96c2e7d52ccfb60f082e6a.md) | 510 | `declaration-track:3a96c2e7d52ccfb60f082e6a059ab97431937e656f83487d9af743250f4a36bc` |
| 34 | `def` | [getPropEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getpropeqproof--84a4f9f6b0be43608f8ef76f.md) | 516 | `declaration-track:84a4f9f6b0be43608f8ef76f1a2f29a8495f833858791915b9a59b7b5446e2ad` |
| 35 | `def` | [getInconsistencyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/getinconsistencyproof--ba980101eb8bd4ed06d3a157.md) | 523 | `declaration-track:ba980101eb8bd4ed06d3a157603b9ce31b2d1289d3dc304faf12980cae247ca6` |
| 36 | `def` | [mkNeOfEqOfNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkneofeqofne--7d56a69a0b490e8a7627ab44.md) | 532 | `declaration-track:7d56a69a0b490e8a7627ab44afccbb8c615e134ec52618a98b3067d9bff6f031` |
| 37 | `def` | [mkNeOfNeOfEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkneofneofeq--a26345ecf1379db1e8d77a64.md) | 543 | `declaration-track:a26345ecf1379db1e8d77a6418a586a4a0ade55ed0fd5da9a2e70515021d8f4f` |
| 38 | `def` | [mkACProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkacproof--c2c4bc5545c401c3bc112cf7.md) | 553 | `declaration-track:c2c4bc5545c401c3bc112cf79561a7a14df2d6abdeb7b1643613c76d9dcecdc8` |
| 39 | `def` | [mkACSimpProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/mkacsimpproof--e5ed62eb8e17978157c61e83.md) | 563 | `declaration-track:e5ed62eb8e17978157c61e834ade832feb7c3e44924915425c0ae3a9f61fc5f2` |
| 40 | `def` | [simplifyACCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/simplifyaccore--8d54feab0038848c90425d54.md) | 585 | `declaration-track:8d54feab0038848c90425d54e9ee768a36e0db319e1b9f3fa684883af0f39717` |
| 41 | `def` | [simplifyACStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/simplifyacstep--3728f51878f53410b6893843.md) | 604 | `declaration-track:3728f51878f53410b6893843ceeaf46d4bd48d07ee53811a8aa68997dbe81645` |
| 42 | `def` | [simplifyAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/declarations/simplifyac--bf1994179d149b089550f8e6.md) | 624 | `declaration-track:bf1994179d149b089550f8e633e1ade250dd2153931572e3bdee4cf64cd5c6b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
