# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eq.Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46beb9bb2ba3bc882d85252c962cbd3689e9475",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46beb9bb2ba3bc882d85252c962cbd3689e9475`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.AC.DenoteExpr` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.Proof` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.Seq` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.Inv` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/withexprs--24d0ceb910b2e2b49e80fd5b.md) | 19 | `declaration-track:24d0ceb910b2e2b49e80fd5b0b50b9cf4b371771b45ded357be238cc56f47048` |
| 2 | `def` | [asACExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/asacexpr--d4919e1554f3fbd23b02fe33.md) | 36 | `declaration-track:d4919e1554f3fbd23b02fe33f1bdf4e151d29f5272e54df40a0a263e76cb5e9c` |
| 3 | `def` | [norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/norm--e94d43ee6764f807beb23c45.md) | 42 | `declaration-track:e94d43ee6764f807beb23c45b859e1bd75d002810befbb576bf9a7c581cb9036` |
| 4 | `def` | [_root_.Lean.Grind.AC.Seq.findSimpA?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/root-lean-grind-ac-seq-findsimpa--0f94a98f1ee26336c1dd4258.md) | 53 | `declaration-track:0f94a98f1ee26336c1dd4258fd3caca16a49a21d32f3a0d1afd36cb2cf57f7be` |
| 5 | `def` | [_root_.Lean.Grind.AC.Seq.findSimpAC?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/root-lean-grind-ac-seq-findsimpac--63df37fdbb0d4e1db58f576d.md) | 63 | `declaration-track:63df37fdbb0d4e1db58f576d787891bfc4fdfe3545159e5b72ccbab69ca82962` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/macro--26cc64f847f692f46e2d785f.md) | 69 | `declaration-track:26cc64f847f692f46e2d785ff86a427c27c30534c421ebcbd543b369ce52a1ce` |
| 7 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--fc3bb54f06e9f0d77567bcd9.md) | 72 | `declaration-track:fc3bb54f06e9f0d77567bcd9477fc426174c33b5e355377a40a9b15d599000b2` |
| 8 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--8855ddd9bfa006d2fefd7c15.md) | 81 | `declaration-track:8855ddd9bfa006d2fefd7c152b3dc58db7913a680da50fd44a07de08628b8bad` |
| 9 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--b8b682ce10197291fce5b575.md) | 90 | `declaration-track:b8b682ce10197291fce5b575d17a8d2ad7b3de9656fb67f1f794ee6345fcf5cb` |
| 10 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--267f11ec521533b466d2288c.md) | 93 | `declaration-track:267f11ec521533b466d2288c29ef047aacec3bd557cedd5ba3a4d78b39125fa9` |
| 11 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--863d69ce8a9164262248d526.md) | 101 | `declaration-track:863d69ce8a9164262248d52601531fe32be03af434f09846b7fd50fcfe42c4ac` |
| 12 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--828f648cf4ef25ff403a3a4a.md) | 110 | `declaration-track:828f648cf4ef25ff403a3a4a9ac50af9991ad164a28f41a1432730ead54eb9f0` |
| 13 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--b61c73b0363215b057b3263a.md) | 130 | `declaration-track:b61c73b0363215b057b3263a13812305440b00e3bcdc471fae909cb65f44ea21` |
| 14 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--ef8bd0410a7b5f736920e4c6.md) | 137 | `declaration-track:ef8bd0410a7b5f736920e4c6e48d0ffaacd221d995f4297400653e473de91291` |
| 15 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--50acdb48b313aea1b3d411b8.md) | 143 | `declaration-track:50acdb48b313aea1b3d411b8380256467dc9486ce277685ef0474e5980bdde9d` |
| 16 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--53c79530dc305b906f3cfc3d.md) | 153 | `declaration-track:53c79530dc305b906f3cfc3d851ad04bffb87459db8e38a9308ad61a8128fc33` |
| 17 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--e8514c6725ed882ba5ead06d.md) | 161 | `declaration-track:e8514c6725ed882ba5ead06d3f3c6bdbe10de2eadcd2e76d50bcd13c2364707e` |
| 18 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--7f40b61d6e6bc9427a9c714a.md) | 181 | `declaration-track:7f40b61d6e6bc9427a9c714a22dcede655154f691492470273a7fbcb0a06a8fa` |
| 19 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/anonymous--9e70cde97c8c93bd320ce71a.md) | 189 | `declaration-track:9e70cde97c8c93bd320ce71a6ee7f887d5f41585e3ac0cf4aeb9a182d3730ffb` |
| 20 | `def` | [saveDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/savediseq--2c6ea67439f7aaa00b08ee97.md) | 196 | `declaration-track:2c6ea67439f7aaa00b08ee979753d9ff32c79d87dbf5cbecf2a6e5aafa4eefc9` |
| 21 | `def` | [DiseqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/diseqcnstr-assert--00bf47e99807f0103b682da9.md) | 199 | `declaration-track:00bf47e99807f0103b682da970cc40dfa2637c6d8def0b34adba5e08afd8a2e9` |
| 22 | `def` | [mkEqCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/mkeqcnstr--2ba25fa09b81421a27bed853.md) | 208 | `declaration-track:2ba25fa09b81421a27bed853fafa5d91dab93e493178902f55ea270a86ca9515` |
| 23 | `def` | [EqCnstr.orient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-orient--4111ae04b49628534d81453a.md) | 213 | `declaration-track:4111ae04b49628534d81453afe9a63ede3e654096457517a6ff00f6f96a47c37` |
| 24 | `def` | [EqCnstr.addToQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-addtoqueue--9ffb02ea63d42b05f563babd.md) | 219 | `declaration-track:9ffb02ea63d42b05f563babdf7a16903572a7bfd364fc9bb6441da4c8d7fe4ee` |
| 25 | `def` | [EqCnstr.superposeWithAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposewithac--84649fd9d4c312aac421e1f2.md) | 223 | `declaration-track:84649fd9d4c312aac421e1f267e29fafb3306eac72850dcf7e7aa15f2a8b64d0` |
| 26 | `def` | [EqCnstr.superposeA](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposea--0c04539009a249bbbd09c503.md) | 238 | `declaration-track:0c04539009a249bbbd09c50375286bce7bc87d4d0ac59c7cf02abcd91cf8cb2a` |
| 27 | `def` | [EqCnstr.superposeWithA](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposewitha--cf59f3bb1e50dc54c584d7cc.md) | 249 | `declaration-track:cf59f3bb1e50dc54c584d7ccae73cbafabcb20919b09bb46b8bcf65bfba5d07f` |
| 28 | `def` | [EqCnstr.addToQueue'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-addtoqueue--93cc5af213efd9a42aac8f37.md) | 263 | `declaration-track:93cc5af213efd9a42aac8f378da6db1640866e122f70209d34c53cd2ea13f28a` |
| 29 | `def` | [EqCnstr.superposeACIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposeacidempotent--45133bbc464aaa52ca4a0c20.md) | 279 | `declaration-track:45133bbc464aaa52ca4a0c20afd5d6cb53dcccf3773c8c0bbb5c957362023467` |
| 30 | `def` | [EqCnstr.superposeAIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposeaidempotent--6073f61cd207b639fc7f9c87.md) | 295 | `declaration-track:6073f61cd207b639fc7f9c8709f1771d5c6ea1c508de0f24b4e00a890ebe990e` |
| 31 | `def` | [EqCnstr.superposeWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-superposewith--1cbc2c97ed4de0f8cbd1964a.md) | 305 | `declaration-track:1cbc2c97ed4de0f8cbd1964a8e5a199323c0d0320dfff7c0b7f1321036eaca77` |
| 32 | `def` | [EqCnstr.simplifyBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-simplifybasis--144170826b02ffffff5c41d5.md) | 314 | `declaration-track:144170826b02ffffff5c41d53cde4c6b04dc15a1fe95a179745f3387e1aedfcb` |
| 33 | `def` | [addSorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/addsorted--f9b4108390b14d9b5a143fdf.md) | 328 | `declaration-track:f9b4108390b14d9b5a143fdf6c0b262e2ab99e14f9a10f538d9d33567d7d7694` |
| 34 | `def` | [EqCnstr.addToBasisCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-addtobasiscore--2327142c84a845fb3acf357d.md) | 336 | `declaration-track:2327142c84a845fb3acf357da3eee4eaf48eccbc0c12dc7f16b1014d4326a2c8` |
| 35 | `def` | [EqCnstr.addToBasisAfterSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-addtobasisaftersimp--31d33c49085f525ff1ffbb7d.md) | 343 | `declaration-track:31d33c49085f525ff1ffbb7dffa631fa6cc07b7aa6252a43df7392cd39b1f92b` |
| 36 | `def` | [EqCnstr.addToBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-addtobasis--b0c342f1f83d7fb9fe67e6bb.md) | 348 | `declaration-track:b0c342f1f83d7fb9fe67e6bb803e89613164366c0edcbe163af5262b15e9ae20` |
| 37 | `def` | [EqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-assert--7fd8c54cd5bc95fc7b6d2b0e.md) | 354 | `declaration-track:7fd8c54cd5bc95fc7b6d2b0e5b99e9c73acc88dee88ec99bed80c901351a57bc` |
| 38 | `def` | [processNewEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/processneweq--f45d24335a3c5ef400b31596.md) | 364 | `declaration-track:f45d24335a3c5ef400b31596a25b5b7efaf1f1e6f674b4bebc38217aa474e171` |
| 39 | `def` | [processNewDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/processnewdiseq--d94bf76bf41e593e6d15e639.md) | 372 | `declaration-track:d94bf76bf41e593e6d15e639918be45fb6d2124fcd23382c69df79444e912e59` |
| 40 | `def` | [isQueueEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/isqueueempty--3afb7664370c812a48e4e166.md) | 379 | `declaration-track:3afb7664370c812a48e4e1664eee5b360c1f190af57eff1f65c0f25fcd2f3217` |
| 41 | `def` | [needCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/needcheck--036257fc913035679df01324.md) | 385 | `declaration-track:036257fc913035679df013249749553c7f78990d5385d5bf8281029cb9db5dfe` |
| 42 | `def` | [getNext?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/getnext--09ae9ded2d5cca5505c1bd02.md) | 389 | `declaration-track:09ae9ded2d5cca5505c1bd0268a42e68954dcb4586ad5ee0b85e62a989858166` |
| 43 | `def` | [checkDiseqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/checkdiseqs--e1d1f1bde9a249ddc5ce0786.md) | 395 | `declaration-track:e1d1f1bde9a249ddc5ce07860c085797f0b49a65e5c47a8440d028fcae7618e6` |
| 44 | `def` | [EqCnstr.simplifyRHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqcnstr-simplifyrhs--394c80d27aa498d927900cbf.md) | 403 | `declaration-track:394c80d27aa498d927900cbfee4a1e5806900eb2b41c7c6270dba8bd50db4674` |
| 45 | `structure` | [EqData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/eqdata--30fa50691b55fff0c151f49d.md) | 436 | `declaration-track:30fa50691b55fff0c151f49d338d6426ddb534c44ba14490d014aa676ed597eb` |
| 46 | `def` | [mkEqData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/mkeqdata--0e0ce82620e877483f2879a0.md) | 441 | `declaration-track:0e0ce82620e877483f2879a0062d3925de98cd965b12574accd9b7c1f50e4d7f` |
| 47 | `abbrev` | [PropagateEqMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/propagateeqmap--9b55abc695d4554b09fe7127.md) | 447 | `declaration-track:9b55abc695d4554b09fe71279d240100fd690105dd6b72c3362c435dc6ffd3df` |
| 48 | `def` | [propagateEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/propagateeqs--0656b5c6c9f741e0eb02e4d0.md) | 449 | `declaration-track:0656b5c6c9f741e0eb02e4d0517b2a4cf258ee845937115fc78e17e624c04180` |
| 49 | `def` | [checkStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/checkstruct--9841a915679134f7d7a0e47e.md) | 479 | `declaration-track:9841a915679134f7d7a0e47edb4422291380d18550b58bbd3354ce614ce7a7b3` |
| 50 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/check--da5d9b52b3ec6b828af04ede.md) | 494 | `declaration-track:da5d9b52b3ec6b828af04ede8df1813b37b1dea7dab943c683f57a80d04bcaee` |
| 51 | `def` | [check'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/declarations/check--6d7691609455e1e556a28e80.md) | 507 | `declaration-track:6d7691609455e1e556a28e80488c0bf1ca271fe56b7fc5e53f4fd34297f5a8ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
