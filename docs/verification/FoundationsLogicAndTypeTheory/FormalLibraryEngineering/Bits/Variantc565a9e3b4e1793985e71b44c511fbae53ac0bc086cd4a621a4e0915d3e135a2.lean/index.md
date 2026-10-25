# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bits.Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f7ac2480c5b0339ed69080023492b760357ffc",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f7ac2480c5b0339ed69080023492b760357ffc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Says` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boddDiv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodddiv2--7a6ddd1b206bbaeb4ac6ca5a.md) | 37 | `declaration-track:7a6ddd1b206bbaeb4ac6ca5af76e4cc840d09beb291ccb87f0e5b49f3e6bb405` |
| 2 | `def` | [div2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2--cfc503e9fd373c04fabbec3b.md) | 45 | `declaration-track:cfc503e9fd373c04fabbec3bb78c8f91303cf0f37b537465a6d894f115defd5e` |
| 3 | `def` | [bodd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd--7ae96f3cd5a4e413df39cf42.md) | 48 | `declaration-track:7ae96f3cd5a4e413df39cf424601d1f70bfa5955be739e807dc7d2f63938755b` |
| 4 | `lemma` | [bodd_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-zero--af89580ae01a39319e5f9cf1.md) | 50 | `result-track:af89580ae01a39319e5f9cf1a3f96765ad17f5891ab5b83930dc315659583be4` |
| 5 | `lemma` | [bodd_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-one--8c7bcaa9849901c5cec9d8d6.md) | 52 | `result-track:8c7bcaa9849901c5cec9d8d63e2d6ebb3bbede801a159fde27bc45447a3ae15a` |
| 6 | `lemma` | [bodd_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-two--ade2fb36a088d9962e3b2688.md) | 54 | `result-track:ade2fb36a088d9962e3b2688ae5bd142cafb20dcfc0d2f2d69dcb31dc4847dda` |
| 7 | `lemma` | [bodd_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-succ--8bd76f06249de160f6ef8269.md) | 57 | `result-track:8bd76f06249de160f6ef82697c60b60d2289e26b6cce34969da109b77d525941` |
| 8 | `lemma` | [bodd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-add--121311d44ae008705318018d.md) | 63 | `result-track:121311d44ae008705318018db3293221154f709f6734998987cbac8707816ac3` |
| 9 | `lemma` | [bodd_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-mul--85ae8ebe134d752f4e8304f9.md) | 69 | `result-track:85ae8ebe134d752f4e8304f9963c7015633d36eb3591740340dfd12214de9f44` |
| 10 | `lemma` | [mod_two_of_bodd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/mod-two-of-bodd--919a857815c52fbde196eb58.md) | 76 | `result-track:919a857815c52fbde196eb58d1943a2377a0b84a68dc2fa42cf6ffad9dd6ad2b` |
| 11 | `lemma` | [div2_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-zero--5e58900031330d089b166404.md) | 90 | `result-track:5e58900031330d089b1664041ad1546d434ab20875c91cb55d161534058fd71f` |
| 12 | `lemma` | [div2_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-one--0d433e1ba72f0ed4c7d80146.md) | 92 | `result-track:0d433e1ba72f0ed4c7d80146c395eec5b21fc1efbef21004ec40c4ddeb65af3c` |
| 13 | `lemma` | [div2_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-two--c0dbbaa136ad00540f3ec244.md) | 94 | `result-track:c0dbbaa136ad00540f3ec24450918c6e7df55ac88e653549266a987c12697ff4` |
| 14 | `lemma` | [div2_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-succ--196fb91d91f668f42e9f0d81.md) | 97 | `result-track:196fb91d91f668f42e9f0d81bc6f9ceee41d6e9b92577be39e7f19a4ee08a00d` |
| 15 | `lemma` | [bodd_add_div2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-add-div2--66decc9ebb7fa023b5fa8bc3.md) | 103 | `result-track:66decc9ebb7fa023b5fa8bc3cd3a1a21ac916d65168383b4bafae21ccfd17231` |
| 16 | `lemma` | [div2_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-val--8cd36a44655d45eb77eca9ce.md) | 112 | `result-track:8cd36a44655d45eb77eca9ce1d8719fcaab95e60d07a1bdd0748de48570f79e7` |
| 17 | `lemma` | [bit_decomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-decomp--36edc9cbda488d31a49ce85d.md) | 117 | `result-track:36edc9cbda488d31a49ce85dec8bccf494bbb496d12e576c4e73e92e74f97644` |
| 18 | `lemma` | [bit_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-zero--bd3a6b9c6f519794ad052421.md) | 120 | `result-track:bd3a6b9c6f519794ad0524211b5d356e762b02d0e24da08ac74039fe06cfedd6` |
| 19 | `def` | [shiftLeft'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft--13b11c74276c825773e6fda8.md) | 126 | `declaration-track:13b11c74276c825773e6fda85291ce933ccd122cca47ecf4d4fdc8c065f376c4` |
| 20 | `lemma` | [shiftLeft'_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft-false--fb6b995381dd1e1706e70398.md) | 131 | `result-track:fb6b995381dd1e1706e703988a7792ffe0bea2b0f72aa1075cd5a569ac9c4abc` |
| 21 | `lemma` | [shiftLeft_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft-eq--138033f59f0dfcbe907cfa27.md) | 139 | `result-track:138033f59f0dfcbe907cfa274577cd5f6944c3fad7a4bc00ad2b1eea4c61c1c2` |
| 22 | `lemma` | [shiftRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftright-eq--4d57d72de529b8b02121ebca.md) | 140 | `result-track:4d57d72de529b8b02121ebca60c832cf96120fe1f1fed283063dfea8b7ca37f9` |
| 23 | `lemma` | [binaryRec_decreasing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/binaryrec-decreasing--76b16b3c094ba5c97d35a8c3.md) | 142 | `result-track:76b16b3c094ba5c97d35a8c3bac84d4c1d9a738549eba509a2f84cd9afdb9757` |
| 24 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/size--8fbc2507dd554d7e21702864.md) | 151 | `declaration-track:8fbc2507dd554d7e217028643b434bf7b5f96d32dd896378dcc518192b23cd88` |
| 25 | `def` | [bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bits--51e7fc022706afbe0a3197a0.md) | 156 | `declaration-track:51e7fc022706afbe0a3197a0aac62d3004564893c7a4a79a50d74bcd700a8211` |
| 26 | `def` | [ldiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/ldiff--f5ef7fde3e34a9405a921851.md) | 162 | `declaration-track:f5ef7fde3e34a9405a921851ce475b21dc7eb9fb6108f275bf955149c2d70eef` |
| 27 | `lemma` | [bodd_bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-bit--9646a1ce975ecb065248f2dc.md) | 167 | `result-track:9646a1ce975ecb065248f2dcc9def076c87f4e307e6de15902cb195b2606b36f` |
| 28 | `lemma` | [div2_bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-bit--c23c3a03bd0fd093853e0c46.md) | 173 | `result-track:c23c3a03bd0fd093853e0c467c14ad4cbfb8ea8629ec285267cc9e1b9676162f` |
| 29 | `lemma` | [shiftLeft'_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft-add--04c00c6398a7a664b18b740f.md) | 178 | `result-track:04c00c6398a7a664b18b740fc266558378260547b58df09ca3cf049c8b8530d7` |
| 30 | `lemma` | [shiftLeft'_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft-sub--61c1910667018ec8ea0fd3cb.md) | 182 | `result-track:61c1910667018ec8ea0fd3cb3e22c8e192bbfac2ffc94dfbc97dc89defefab4b` |
| 31 | `lemma` | [shiftLeft_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/shiftleft-sub--4676d7958e338f49ec8037d0.md) | 189 | `result-track:4676d7958e338f49ec8037d0814786be89840a72ea65352695706cab4d81b06e` |
| 32 | `lemma` | [bodd_eq_one_and_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-eq-one-and-ne-zero--36f15b7478b4d17d740b5555.md) | 192 | `result-track:36f15b7478b4d17d740b5555826070391e66ce59d9715e2b19e7f6d10a414f37` |
| 33 | `lemma` | [testBit_bit_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/testbit-bit-succ--c2043389cc295fd82c355471.md) | 197 | `result-track:c2043389cc295fd82c355471f36eeb8fbd9985ee01cfbddeb12253efa644f17b` |
| 34 | `theorem` | [boddDiv2_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodddiv2-eq--9112905950662893527fc31b.md) | 209 | `result-track:9112905950662893527fc31bfd16ec2a06c5be8208f980e6aaecb71133278864` |
| 35 | `theorem` | [div2_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-bit0--7d9dd23bdeea12e1ba09f6b5.md) | 212 | `result-track:7d9dd23bdeea12e1ba09f6b533ded9f0e18ad99b86eac1bcf0917aeb86a95835` |
| 36 | `theorem` | [div2_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-bit1--cb9f7f2d3ec2f559d42f3fa4.md) | 216 | `result-track:cb9f7f2d3ec2f559d42f3fa495bd23cf7b0165e29b890895b95dbe4033387467` |
| 37 | `theorem` | [bit_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-add--c2abb14036a307d2773fdfbc.md) | 221 | `result-track:c2abb14036a307d2773fdfbc21759246097e02a92baa5f3cacb280b2891c522f` |
| 38 | `theorem` | [bit_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-add--d5f9ba5a740423f8f8d3d32b.md) | 225 | `result-track:d5f9ba5a740423f8f8d3d32bd8ef986fd30fe3fbac1f3cd6a38a8e3edf7eb0f0` |
| 39 | `theorem` | [bit_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-ne-zero--5ebecc154ed792230304e49f.md) | 229 | `result-track:5ebecc154ed792230304e49f15735c5297d03024a55e9fa609f83da686386c34` |
| 40 | `theorem` | [bitCasesOn_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bitcaseson-bit0--56b62eed1490bb2ba12ee3e7.md) | 233 | `result-track:56b62eed1490bb2ba12ee3e7d98f70b3db449d020f3f782740cbd6d63fb4eb19` |
| 41 | `theorem` | [bitCasesOn_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bitcaseson-bit1--22c9e8c17ebeebb1e38cb9ce.md) | 238 | `result-track:22c9e8c17ebeebb1e38cb9ceacaad53d5ea830f0a998bf31ba31fcd3d8c35142` |
| 42 | `theorem` | [bit_cases_on_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-cases-on-injective--46492d9eb50857f6b52d5052.md) | 242 | `result-track:46492d9eb50857f6b52d505236bc0c1b86ac1c16cd7877146ff34e4841b994b6` |
| 43 | `theorem` | [bit_cases_on_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-cases-on-inj--14bf696cfc375402ad129b00.md) | 249 | `result-track:14bf696cfc375402ad129b00186efb8abf802d64d0f2ca8e96d847982790b2c8` |
| 44 | `lemma` | [bit_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-le--fd896a114311d9b40e3d603e.md) | 253 | `result-track:fd896a114311d9b40e3d603ef3a60c1f85853373447ce06092c6af525b6ea44a` |
| 45 | `lemma` | [bit_lt_bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit-lt-bit--01a0a4c9d2e053e383428132.md) | 257 | `result-track:01a0a4c9d2e053e3834281321f8af9a1c5aa3b5e4e64ef273445d6cc7bede5f3` |
| 46 | `theorem` | [zero_bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/zero-bits--10cf24b918885f48f0e48f55.md) | 262 | `result-track:10cf24b918885f48f0e48f55dc709aa74b4199ac2599e8655ae77a3a7cb7eccf` |
| 47 | `theorem` | [bits_append_bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bits-append-bit--22d348eced49edd88fe1eb12.md) | 265 | `result-track:22d348eced49edd88fe1eb12806099404d017246e9ee67e6b435f152c976c0d2` |
| 48 | `theorem` | [bit0_bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit0-bits--57dc884a2eab2e6c7c31bca7.md) | 271 | `result-track:57dc884a2eab2e6c7c31bca7c35b130a328a9fb7e1e7067e88c12f6a73b92e22` |
| 49 | `theorem` | [bit1_bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bit1-bits--3782055f7c1f615e79b3c057.md) | 275 | `result-track:3782055f7c1f615e79b3c05752473d365abcad7d116d8376019c9ea8b54f860b` |
| 50 | `theorem` | [one_bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/one-bits--7888d5273f50ecf08792747a.md) | 279 | `result-track:7888d5273f50ecf08792747a8dbd69ca6961d980fdc7a4eb474ab9fcf134a0b4` |
| 51 | `theorem` | [bodd_eq_bits_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/bodd-eq-bits-head--a2b6dbb4aa8ff5e54d666d7c.md) | 287 | `result-track:a2b6dbb4aa8ff5e54d666d7c1d065f3ee1f09627905451b5364622abb9cdef1c` |
| 52 | `theorem` | [div2_bits_eq_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantc565a9e3b4e1793985e71b44c511fbae53ac0bc086cd4a621a4e0915d3e135a2.lean/declarations/div2-bits-eq-tail--a948ae255a39277def7fe4ac.md) | 292 | `result-track:a948ae255a39277def7fe4ac306c0031fdfb7679dd7fbaa5f56349d56219c738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
