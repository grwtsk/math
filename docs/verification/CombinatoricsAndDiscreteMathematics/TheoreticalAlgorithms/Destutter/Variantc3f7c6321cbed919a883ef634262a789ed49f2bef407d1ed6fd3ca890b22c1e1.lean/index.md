# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Destutter.Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f021d2425e7a018f6a53c92e5c2d0e5a2fe0b79a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f021d2425e7a018f6a53c92e5c2d0e5a2fe0b79a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [destutter'_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-nil--a6074438cddb8611b0effe8d.md) | 37 | `result-track:a6074438cddb8611b0effe8df87a934bef36e0cb672fd7beebe88be0ab8136de` |
| 2 | `theorem` | [destutter'_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-cons--b4dd7fc6d1457737f8277049.md) | 40 | `result-track:b4dd7fc6d1457737f82770496f4f53362f127b7e9feb8b4ae747fd22d2c1b618` |
| 3 | `theorem` | [destutter'_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-cons-pos--a95c64900a4e85b8798d0891.md) | 47 | `result-track:a95c64900a4e85b8798d08914c8aa07ba7c4d72ac23aac7e56a6f8b4c79daf0f` |
| 4 | `theorem` | [destutter'_cons_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-cons-neg--e87386e13679d28b72b7f0d2.md) | 51 | `result-track:e87386e13679d28b72b7f0d2dcb774f89e557127f455d6e588e92e9d0e045238` |
| 5 | `theorem` | [destutter'_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-singleton--06efa17f5831c5093e3aa04f.md) | 57 | `result-track:06efa17f5831c5093e3aa04f81e9b1e2bb7f47a1f5d48d70dfa84703dd4e6138` |
| 6 | `theorem` | [destutter'_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-sublist--46489aa574f9671c62ba88b9.md) | 60 | `result-track:46489aa574f9671c62ba88b9135cfa3e17a10ada6b29043ba7931059e504975c` |
| 7 | `theorem` | [mem_destutter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/mem-destutter--d58d803d7957826f1893bbad.md) | 68 | `result-track:d58d803d7957826f1893bbadf1aece4de1da30f0b177f67e9816e969a7039071` |
| 8 | `theorem` | [destutter'_is_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-is-chain--d2a1881f0d63716d8872c866.md) | 76 | `result-track:d2a1881f0d63716d8872c86668789f970532d7d433b73c4657ef0f345ff1f9f3` |
| 9 | `theorem` | [destutter'_is_chain'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-is-chain--296543c58c1f0872bcc314e8.md) | 85 | `result-track:296543c58c1f0872bcc314e84940ffb83fe1d06ab6b90d3d31293c044e298088` |
| 10 | `theorem` | [destutter'_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-of-chain--bd6c031a998880c16d698606.md) | 93 | `result-track:bd6c031a998880c16d6986062dd35cdce6942d4d7ba5980223cd7011d3460cd9` |
| 11 | `theorem` | [destutter'_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-eq-self-iff--5f394ed6ab6d90e5bc86bd39.md) | 100 | `result-track:5f394ed6ab6d90e5bc86bd398ed9fa743ba815745aa55b68cf4d9a46c6a958e7` |
| 12 | `theorem` | [destutter'_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-ne-nil--1e04e5879ecd18d92ef438ac.md) | 107 | `result-track:1e04e5879ecd18d92ef438ac9a7de82ed8c5fc071f0938b25f473d82476c416e` |
| 13 | `theorem` | [destutter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-nil--8667ff1e67bf3bd63b792d6d.md) | 111 | `result-track:8667ff1e67bf3bd63b792d6df27a8facc3c712aebe4219be04853970a3bdaddb` |
| 14 | `theorem` | [destutter_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-cons--288a7b0776d7476d59d63fb4.md) | 114 | `result-track:288a7b0776d7476d59d63fb4ae0c623792b7a0431407064b3bd977c61c8d9506` |
| 15 | `theorem` | [destutter_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-cons-cons--b482bd00c7dcca1eb1052137.md) | 117 | `result-track:b482bd00c7dcca1eb1052137bd195edbcb9b10bd9bf6c05c7081c7fa313e437d` |
| 16 | `theorem` | [destutter_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-singleton--8e9649195d64694b32699681.md) | 122 | `result-track:8e9649195d64694b3269968105a3fc1705b57e63cb055f4343ef61f10d259604` |
| 17 | `theorem` | [destutter_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-pair--fa33c55c5bf15a0739ea24ac.md) | 126 | `result-track:fa33c55c5bf15a0739ea24acdcbfcd6060c8c14a7c608a6333d08d7999195b1d` |
| 18 | `theorem` | [destutter_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-sublist--d43954ca45ba7f9b9083232e.md) | 129 | `result-track:d43954ca45ba7f9b9083232e80957e0bb23af472435d6db4e14c0e549c721d32` |
| 19 | `theorem` | [destutter_is_chain'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-is-chain--83e06dc8b8a34fecd5613159.md) | 133 | `result-track:83e06dc8b8a34fecd5613159d58aecc257f6cbdc86e01306fba38b60cba9476a` |
| 20 | `theorem` | [destutter_of_chain'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-of-chain--87add798b62a9f22ea9676e4.md) | 137 | `result-track:87add798b62a9f22ea9676e441148c90219f571953bd07defcb3892a7a9fc02b` |
| 21 | `theorem` | [destutter_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-eq-self-iff--9fa440ad62416f8d32c0d033.md) | 142 | `result-track:9fa440ad62416f8d32c0d03366d48b869f1bd19b256d2891fe3e3bf19390da7c` |
| 22 | `theorem` | [destutter_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-idem--15656b0e9b7f8c0fc7640187.md) | 146 | `result-track:15656b0e9b7f8c0fc76401871efba178ef8fab58516e7fa62daa1f59e7b41d37` |
| 23 | `theorem` | [destutter_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/destutter-eq-nil--8ff0a7a73120f3ddb6c7dc3d.md) | 150 | `result-track:8ff0a7a73120f3ddb6c7dc3deea3b0a352f5f0f98ed92ebad939310383670afa` |
| 24 | `theorem` | [map_destutter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/map-destutter--7a0e0a42a2aeb3b034cf17ab.md) | 157 | `result-track:7a0e0a42a2aeb3b034cf17abda9b1d550201b23ac09f37289926cebd3fea4f0a` |
| 25 | `theorem` | [map_destutter_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/map-destutter-ne--74be4df5a6a9638ce3487fa2.md) | 170 | `result-track:74be4df5a6a9638ce3487fa2ce86d7781dffb764b322df45c3c18d6db5b0a204` |
| 26 | `theorem` | [length_destutter'_cotrans_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/length-destutter-cotrans-ge--4f344ac3077d8c1c19bc5fef.md) | 176 | `result-track:4f344ac3077d8c1c19bc5fefc2d47e270100ed6a03116b6f4f44823fbca022c9` |
| 27 | `theorem` | [length_destutter'_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/length-destutter-congr--2b6079c3b8b265e259dc79d6.md) | 196 | `result-track:2b6079c3b8b265e259dc79d61b0a80d4e1f7aa081a60df10d68e0dc2d59e8cec` |
| 28 | `theorem` | [le_length_destutter'_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/le-length-destutter-cons--ceafae85cb5c8e88306e2d94.md) | 207 | `result-track:ceafae85cb5c8e88306e2d94177f0ef941f30222da4077bd4479ad284cc31a8a` |
| 29 | `theorem` | [length_destutter_le_length_destutter_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/length-destutter-le-length-destutter-cons--67427ba05744882916ee6b3b.md) | 222 | `result-track:67427ba05744882916ee6b3bcbda4be3d94a6aadf61389faae23b95b49312284` |
| 30 | `theorem` | [length_destutter_ne_le_length_destutter_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/length-destutter-ne-le-length-destutter-cons--04e2cc46fa66fcfb7a9d1702.md) | 230 | `result-track:04e2cc46fa66fcfb7a9d1702552256455ca1c437c88c7324284e9bb5d5eafa81` |
| 31 | `lemma` | [Chain'.length_le_length_destutter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/chain-length-le-length-destutter--577068abfab2fcdb08b11300.md) | 239 | `result-track:577068abfab2fcdb08b113003c7c1eb2692223de7df1d349819e289654d67d2f` |
| 32 | `lemma` | [Chain'.length_le_length_destutter_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/declarations/chain-length-le-length-destutter-ne--e74ca4d288aed5c25b43a8c6.md) | 262 | `result-track:e74ca4d288aed5c25b43a8c62a1edcfb64ddceed53f350fa655f2cb520aae89e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
