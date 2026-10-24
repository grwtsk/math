# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modify.Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1229e2da85c83e858670652a1aa9b0efef7fdad2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1229e2da85c83e858670652a1aa9b0efef7fdad2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pos.set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-set--14f9e26fe5bad69043a8517d.md) | 43 | `declaration-track:14f9e26fe5bad69043a8517d0cb9e1336c6b8e04dabc3142ed781c466009795b` |
| 2 | `theorem` | [Pos.set_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-set-eq-append--170442820019be22265eb8b6.md) | 53 | `result-track:170442820019be22265eb8b6b9ad5bfdf111e29992e6b0510fcebdac7b3881f8` |
| 3 | `theorem` | [Pos.Raw.IsValid.set_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-raw-isvalid-set-of-le--5814f42468b3a053f688bd18.md) | 62 | `result-track:5814f42468b3a053f688bd1833b761b52aa48547e907a271413ff8223bd58a3d` |
| 4 | `def` | [Pos.toSetOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-tosetofle--1f75570bc5aa07fc36ee47ac.md) | 72 | `declaration-track:1f75570bc5aa07fc36ee47accc90474fff068b13fa0396d10ccce4738db84234` |
| 5 | `theorem` | [Pos.offset_toSetOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-offset-tosetofle--4c6b6c8a39de86519809027b.md) | 78 | `result-track:4c6b6c8a39de86519809027b3814a393de5a29fb2742bdb91a4627474fb9f468` |
| 6 | `theorem` | [Pos.Raw.isValid_add_char_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-raw-isvalid-add-char-set--512443c61031e4673ad6ae8c.md) | 81 | `result-track:512443c61031e4673ad6ae8ce7bd38d5a7311cd61340452f129575c5d45eff90` |
| 7 | `def` | [Pos.pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-pastset--aa14609ad7a24953273d247c.md) | 87 | `declaration-track:aa14609ad7a24953273d247c28facafc50e7a259abe18bc946dd77bd7fffba26` |
| 8 | `theorem` | [Pos.offset_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-offset-pastset--fa2de5de7fd695546d124312.md) | 92 | `result-track:fa2de5de7fd695546d124312ee3cc13f801f7bcc82b7c010a64c7e208d2e5928` |
| 9 | `def` | [Pos.appendRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-appendright--9b45935f0faf8a5e70f50156.md) | 96 | `declaration-track:9b45935f0faf8a5e70f501566d901c04c5bff947439eaf49dd95df1731bd25af` |
| 10 | `theorem` | [Pos.splits_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-splits-pastset--7b41870f31e80e5830c417d5.md) | 100 | `result-track:7b41870f31e80e5830c417d56effefcbe24b3d0104b3e79f2f203e4e099fbb9f` |
| 11 | `theorem` | [remainingBytes_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/remainingbytes-pastset--c759bfc297c83c2f82ce6600.md) | 105 | `result-track:c759bfc297c83c2f82ce6600306416fd5fd44ac28885ccd82f4cfc31eb431526` |
| 12 | `def` | [Pos.modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-modify--85abcb1aab508e043a30dc4c.md) | 120 | `declaration-track:85abcb1aab508e043a30dc4cbfde34c6cce422a727242293a4d131b70195de30` |
| 13 | `theorem` | [Pos.Raw.IsValid.modify_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-raw-isvalid-modify-of-le--bcf922477d8fede78b98dce1.md) | 124 | `result-track:bcf922477d8fede78b98dce1381452dec4a8c3a7d6b007f03bdd2af1f8df8a81` |
| 14 | `def` | [Pos.toModifyOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-tomodifyofle--6d705e4d8f8d8e5af7af6a0b.md) | 132 | `declaration-track:6d705e4d8f8d8e5af7af6a0b9b347ca47c0ef6416943d9c2ac56815828fed4b8` |
| 15 | `theorem` | [Pos.offset_toModifyOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-offset-tomodifyofle--5dc7c6231c07870452ee735d.md) | 138 | `result-track:5dc7c6231c07870452ee735d22e91048fd5fe4971e8dd66eb45deadad20d9b33` |
| 16 | `def` | [Pos.pastModify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-pastmodify--aa36c35380e90cadf12ec3b0.md) | 143 | `declaration-track:aa36c35380e90cadf12ec3b0ac406df8278403ffacddc4e0824f02f1bfa94607` |
| 17 | `theorem` | [remainingBytes_pastModify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/remainingbytes-pastmodify--243411c39dea015f514fc3ed.md) | 147 | `result-track:243411c39dea015f514fc3edf451db55c197f6a08f4f45ca24ee581ccb6e1dbc` |
| 18 | `def` | [Pos.Raw.set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-raw-set--948213d79b04b7f426b25109.md) | 169 | `declaration-track:948213d79b04b7f426b251095e069d6ee20a020068164d4f3687b2f7d0ce6ea8` |
| 19 | `def` | [set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/set--5189272a711da3eafde74ef4.md) | 173 | `declaration-track:5189272a711da3eafde74ef4df8f20d0892c98989407d607c83f60dadad06107` |
| 20 | `def` | [Pos.Raw.modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/pos-raw-modify--cb5cecc59edd089668051384.md) | 191 | `declaration-track:cb5cecc59edd0896680513840d747953e563b79e82f091ef291ae9eb4048d7b4` |
| 21 | `def` | [modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/modify--afa5c547c87e5e7644a9387d.md) | 195 | `declaration-track:afa5c547c87e5e7644a9387d71bf5a948bc5b465c7c81cc2c25e541de8153da8` |
| 22 | `def` | [mapAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/mapaux--a5b4a3f180c38b9b037a74e7.md) | 198 | `declaration-track:a5b4a3f180c38b9b037a74e726f76b6925bb98757f2987c33f61432e85611e4d` |
| 23 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/map--14feec72df2a37127156e063.md) | 215 | `declaration-track:14feec72df2a37127156e0638087a50c0d32c1d50a29df2a372437a3b4b385b7` |
| 24 | `def` | [toUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/toupper--4ed0b00f345dd70227eb48c8.md) | 227 | `declaration-track:4ed0b00f345dd70227eb48c8aaa8aa7281511753efae4544d4b76e4a961eaba8` |
| 25 | `def` | [toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/tolower--e519b58488865dc300b70fcc.md) | 240 | `declaration-track:e519b58488865dc300b70fcc41999a7556f8cb4da726006475d6af2222cf7b06` |
| 26 | `def` | [capitalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/capitalize--ac8add44a1858163f0d776e7.md) | 254 | `declaration-track:ac8add44a1858163f0d776e775f7096f8c655de83f69365357b8f787ea01c9ba` |
| 27 | `def` | [Internal.capitalizeImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/internal-capitalizeimpl--e61108fcc1859c5035396233.md) | 258 | `declaration-track:e61108fcc1859c5035396233f54dc6725f089bd6f6806358b9baea1d9187c3e4` |
| 28 | `def` | [decapitalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant8543dbdedd330cec2edbb51cdc16986fabcf090a59700d8e0918113938d11c08.lean/declarations/decapitalize--d2edccb0edb53850220555e9.md) | 272 | `declaration-track:d2edccb0edb53850220555e9ce11a3ebbf26d7b5df28345f835eb960e96c9bc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
