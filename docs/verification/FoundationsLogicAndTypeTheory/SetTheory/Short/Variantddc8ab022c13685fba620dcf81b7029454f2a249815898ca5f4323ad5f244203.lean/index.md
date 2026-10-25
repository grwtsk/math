# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Short.Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46338420fb53817e401c0ce946e6c05cc9b07f10",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46338420fb53817e401c0ce946e6c05cc9b07f10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short--81e66b8677d847805a41b116.md) | 35 | `declaration-track:81e66b8677d847805a41b1167cfc1fe678351f27cf158374ff95656ce286958e` |
| 2 | `instance` | [subsingleton_short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/subsingleton-short--ce6bd5c87692e825e7adce83.md) | 40 | `declaration-track:ce6bd5c87692e825e7adce8374c9f823b1d95d61f38f0721ef5cc17671ad76f4` |
| 3 | `theorem` | [subsingleton_short_example](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/subsingleton-short-example--2ec79903c680146913c204bb.md) | 51 | `result-track:2ec79903c680146913c204bb41d87a91d357f92ad0aee383b7f24b76b2ad0a1a` |
| 4 | `def` | [Short.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short-mk--2848ecb465015573231aa185.md) | 75 | `declaration-track:2848ecb465015573231aa185db8824074a2b2bcf5cd40b73ed52c2d54f20d3fd` |
| 5 | `def` | [fintypeLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/fintypeleft--5a536d3d2270d1b6f1467f0e.md) | 88 | `declaration-track:5a536d3d2270d1b6f1467f0e7e6de642336636eaa5d6cd4845ffb6557a7a5ce2` |
| 6 | `instance` | [fintypeLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/fintypeleftmoves--5f6d7576daa303239b4697e8.md) | 93 | `declaration-track:5f6d7576daa303239b4697e89e675078f667e3713a60f7cf89df67794599ff06` |
| 7 | `def` | [fintypeRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/fintyperight--95bad75da503d889643b50ac.md) | 99 | `declaration-track:95bad75da503d889643b50ac713944a367bae32ac6135c7ea6682a754abe4c41` |
| 8 | `instance` | [fintypeRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/fintyperightmoves--2b821f4de38df4a71ce4b716.md) | 104 | `declaration-track:2b821f4de38df4a71ce4b7167d542883d1cb16f88189a62651646bc0cc1d41d8` |
| 9 | `instance` | [moveLeftShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/moveleftshort--ba786b237263a472e69c0b68.md) | 107 | `declaration-track:ba786b237263a472e69c0b6818e52f056e8529d969f58026753f83f3412bf27e` |
| 10 | `def` | [moveLeftShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/moveleftshort--06b2884319e7c8bec3546e08.md) | 114 | `declaration-track:06b2884319e7c8bec3546e0899269b7c986210d6fe91a831504e1fc3edc7b035` |
| 11 | `instance` | [moveRightShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/moverightshort--b992cd1d91eaacb2d35b4de3.md) | 119 | `declaration-track:b992cd1d91eaacb2d35b4de3bce6bc56b965f7cb5f6123429411dab3751380f6` |
| 12 | `def` | [moveRightShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/moverightshort--1f12a038371d5388602f786c.md) | 126 | `declaration-track:1f12a038371d5388602f786c99113bf9d1373ddd3e9198821cdefaa4bc0e7ab8` |
| 13 | `theorem` | [short_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short-birthday--a4a6fdaf9b542da3a55e9428.md) | 131 | `result-track:a4a6fdaf9b542da3a55e942814d9c0753045e27a1082f50697206d598934e9b9` |
| 14 | `def` | [Short.ofIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short-ofisempty--8fa9a628765bc4e403f49584.md) | 149 | `declaration-track:8fa9a628765bc4e403f49584a158fecb143379800639a26c7c5120a864cd9fd8` |
| 15 | `instance` | [short0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short0--7320e9a93938a9c83133163c.md) | 154 | `declaration-track:7320e9a93938a9c83133163cdd9c618f7fee4aaec48bac49f55f9406346fa2fa` |
| 16 | `instance` | [short1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/short1--3f024af9fcb9564c5bc47159.md) | 157 | `declaration-track:3f024af9fcb9564c5bc47159fa077e567e43df0b74eeab0677f1af6f6e0090b9` |
| 17 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/inductive--df8e272a488e5714dcdaba30.md) | 161 | `declaration-track:df8e272a488e5714dcdaba305c3244ce15ec9a40f933480f4a432e35d934c158` |
| 18 | `instance` | [ListShort.cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/listshort-cons--295df2ac463bf55999408a6a.md) | 170 | `declaration-track:295df2ac463bf55999408a6a38940b12c2029d3c8565137314b549a266fc282e` |
| 19 | `instance` | [listShortGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/listshortget--747daa5108b6f506bb728e49.md) | 175 | `declaration-track:747daa5108b6f506bb728e49889d5197e5e515f82a8f680fac71c3f750692f5f` |
| 20 | `instance` | [shortOfLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortoflists--a70e2227869819bb1f1a5523.md) | 181 | `declaration-track:a70e2227869819bb1f1a5523f10a16b7e82310b226b103a8c72f8f1b7abea876` |
| 21 | `def` | [shortOfRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortofrelabelling--d3b40670b75598f57fbb7003.md) | 186 | `declaration-track:d3b40670b75598f57fbb70033493ade7594ba1fac7e932614f6ce8b2d4909c65` |
| 22 | `instance` | [shortNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortneg--9b37fefc92f52b7981586c34.md) | 195 | `declaration-track:9b37fefc92f52b7981586c340f5ed55464aa00380b9abb683ce3fc8752896609` |
| 23 | `instance` | [shortAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortadd--dd869bf3c666d129836e7f10.md) | 199 | `declaration-track:dd869bf3c666d129836e7f10ce14bbf34c72d45116c23830cc0a9568db7cf479` |
| 24 | `instance` | [shortNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortnat--3af2dfb01c704b2af3e12be3.md) | 208 | `declaration-track:3af2dfb01c704b2af3e12be3dc3fcd744515adc9eccf9093137124360b1d9a1b` |
| 25 | `instance` | [shortOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortofnat--9cb6bbe299d4a8bccd27fa06.md) | 212 | `declaration-track:9cb6bbe299d4a8bccd27fa061ed22a017f06e5340d70d9c49050e6344050fe07` |
| 26 | `instance` | [shortBit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortbit0--22c2628903f3c1e7f2952eb8.md) | 214 | `declaration-track:22c2628903f3c1e7f2952eb8ce3d04d0457d08963e422cd5bc49e3aa6370fe2b` |
| 27 | `instance` | [shortBit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/shortbit1--916c9ad39f7bf747300f5f96.md) | 216 | `declaration-track:916c9ad39f7bf747300f5f96f0f4889cb0a7f1e906f1a87903c11b4416d48703` |
| 28 | `def` | [leLFDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/lelfdecidable--f2fa45f8c93392bf8d51d96a.md) | 222 | `declaration-track:f2fa45f8c93392bf8d51d96a23e857f49a5b7db8dadc640d3075e24c6f43d47e` |
| 29 | `instance` | [leDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/ledecidable--f6841077893b0faebc4c39af.md) | 247 | `declaration-track:f6841077893b0faebc4c39af34b7147b1d1f95f0d29ae4af4dc33f14b8dcfbf5` |
| 30 | `instance` | [lfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/lfdecidable--6e3717173c3f055ec8566ac7.md) | 250 | `declaration-track:6e3717173c3f055ec8566ac705e84575fe990cf118d0c43099d1a11bd56fb6c5` |
| 31 | `instance` | [ltDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/ltdecidable--a1b95895a304d275856d087c.md) | 253 | `declaration-track:a1b95895a304d275856d087cd9e9b3095e64bfd8151a5280d5c344c7f3ec888a` |
| 32 | `instance` | [equivDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/equivdecidable--1adcf53768a47d71702eccfe.md) | 256 | `declaration-track:1adcf53768a47d71702eccfe3b6b2c03d1ca090cbf132e4dffa6d9d1b319d535` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--4a09a82373670504565e2581.md) | 259 | `declaration-track:4a09a82373670504565e25815304eb54272bdde7bbab834ed2fb967f5f7eb989` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--867aa0582f57a0e19870ec63.md) | 261 | `declaration-track:867aa0582f57a0e19870ec6394c506161cb25078c618c0692b1a716eb815c5a2` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--8a9eb0e9cf7edf6259291e52.md) | 263 | `declaration-track:8a9eb0e9cf7edf6259291e524b616cfb06a7ef59f810209aa9f6383fdb9a5516` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--1e89925534c45ed1cb6b23dc.md) | 265 | `declaration-track:1e89925534c45ed1cb6b23dc68e4499d7ccf6efdc5cb11c744a219823daa29eb` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--42de1b35f921b2785ff5797a.md) | 267 | `declaration-track:42de1b35f921b2785ff5797aa9dc494fecfb50fc2a95aa2ef500033771eee355` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--3f517dbae684f98d78816621.md) | 269 | `declaration-track:3f517dbae684f98d78816621a9b19bce3a1658eff8d506dc968a885e396edd2f` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--38a815f58fce69dc36354a11.md) | 271 | `declaration-track:38a815f58fce69dc36354a11d92499eb0e61fec06169074f3229f9d23a3a0726` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantddc8ab022c13685fba620dcf81b7029454f2a249815898ca5f4323ad5f244203.lean/declarations/example--70856b347d6b456e2a6dbc4e.md) | 273 | `declaration-track:70856b347d6b456e2a6dbc4e1c4bdabfd7c903c1efc2f5a01373a2ad66b2faab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
