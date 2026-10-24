# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06b8c9df6c95df0741edb87d22f916b5a809be20",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06b8c9df6c95df0741edb87d22f916b5a809be20`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/take-one-drop-eq-of-lt-length--9658c3f32cde3f71fb2aecdf.md) | 34 | `result-track:9658c3f32cde3f71fb2aecdf25d71e193615ce2093702d9b692a3cda2a4b9d39` |
| 2 | `lemma` | [take_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/take-eq-self-iff--c8c92259704909ea5491252c.md) | 39 | `result-track:c8c92259704909ea5491252c629672f3f9e1c9bf84f02137e24e716892b9aa63` |
| 3 | `lemma` | [take_self_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/take-self-eq-iff--3bcea4ec1abc3aa451f3e26f.md) | 42 | `result-track:3bcea4ec1abc3aa451f3e26fbdb14272d766711a37e6277a650f248c7225239a` |
| 4 | `lemma` | [take_eq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/take-eq-left-iff--0cd0a6eb7404c5d823d59bee.md) | 45 | `result-track:0cd0a6eb7404c5d823d59bee603db8f208a84c39c8db7c5a38dd714aab3ce8d3` |
| 5 | `lemma` | [left_eq_take_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/left-eq-take-iff--b4face1ebff288ccfb8e3fbb.md) | 49 | `result-track:b4face1ebff288ccfb8e3fbbf99d7813f80b6b4d2727ec4e9b13d068081bf69e` |
| 6 | `lemma` | [drop_take_append_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/drop-take-append-drop--a9c8625af26207a4650e7c05.md) | 53 | `result-track:a9c8625af26207a4650e7c05d2c6463c7935279d48b80904627e24a37e414405` |
| 7 | `lemma` | [drop_take_append_drop'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/drop-take-append-drop--478de88d06516767b299009f.md) | 57 | `result-track:478de88d06516767b299009f112d141126ee0d86fe6b1efbb23a605a30b44161` |
| 8 | `lemma` | [take_concat_get'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/take-concat-get--5c5b1f2774df2e3e32d6a9f6.md) | 61 | `result-track:5c5b1f2774df2e3e32d6a9f6e285ddb5d47a91053eb9a0daa326ba7f35884fcd` |
| 9 | `theorem` | [cons_getElem_drop_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/cons-getelem-drop-succ--251e30d8b542b8c999b6f271.md) | 64 | `result-track:251e30d8b542b8c999b6f271ac4b14080477c11766a8b6c2ac852474694f34df` |
| 10 | `theorem` | [cons_get_drop_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/cons-get-drop-succ--9049e68e5be51463f34688b8.md) | 68 | `result-track:9049e68e5be51463f34688b8d8678df40b151e4bc2489663bd27401024058250` |
| 11 | `lemma` | [drop_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/drop-length-sub-one--ea7b2bdde17d6a06667595e4.md) | 72 | `result-track:ea7b2bdde17d6a06667595e4f357118d55bdc3134c959599991b133ac34ee9db` |
| 12 | `theorem` | [takeI_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/takei-length--252b167e07f128c9709ad680.md) | 86 | `result-track:252b167e07f128c9709ad6809ece3aba6da252bbac3d8f98cb16f8b66b4e5cb6` |
| 13 | `theorem` | [takeI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/takei-nil--494a81ab034e344b3d3ed826.md) | 91 | `result-track:494a81ab034e344b3d3ed826111367ce97f7423656392874e71a8d089d521cc2` |
| 14 | `theorem` | [takeI_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/takei-eq-take--c95e1a7ac286582dc47d7808.md) | 95 | `result-track:c95e1a7ac286582dc47d780834373036d5553f954a6228d8ef9d0b26a2d9e891` |
| 15 | `theorem` | [takeI_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/takei-left--61f56c7ffda6d833215ccd3e.md) | 100 | `result-track:61f56c7ffda6d833215ccd3e742854501199a07ca9d175a15de2f5bb64ffcd9a` |
| 16 | `theorem` | [takeI_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/takei-left--c389f28f8863913de4eeb035.md) | 103 | `result-track:c389f28f8863913de4eeb035ebd0ccd15da9fd08f07f39cf78cf26a356ef02ce` |
| 17 | `theorem` | [takeD_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/taked-length--9f3199f420317a79e79b8161.md) | 112 | `result-track:9f3199f420317a79e79b816173e8f9a0dc9403c7dd46061080f7061def63e39d` |
| 18 | `theorem` | [takeD_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/taked-eq-take--019eb0ecce403d7ac436e6d4.md) | 118 | `result-track:019eb0ecce403d7ac436e6d466abe9e6bb290c305742e08e473ae7daf4bc0c74` |
| 19 | `theorem` | [takeD_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/taked-left--f7b5784e95d7a730b244975a.md) | 123 | `result-track:f7b5784e95d7a730b244975a832c826a859ced736585d7228fee0a18d4eacd6b` |
| 20 | `theorem` | [takeD_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/taked-left--11d94d522c0c4b434f551c41.md) | 126 | `result-track:11d94d522c0c4b434f551c41d46a539b21fe29f07d72fe3a0661565dc3f315fd` |
| 21 | `theorem` | [span.loop_eq_take_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/span-loop-eq-take-drop--82c1304d07ebf0ba3c822ed2.md) | 139 | `result-track:82c1304d07ebf0ba3c822ed2c5eb4f324f6c9f512842a9e26c176e1e4af412e2` |
| 22 | `theorem` | [span_eq_takeWhile_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/span-eq-takewhile-dropwhile--1cd66b6fe229d0000316f99f.md) | 146 | `result-track:1cd66b6fe229d0000316f99fff1e1f346f024cd9134de9e4452fba8857d1e69d` |
| 23 | `theorem` | [dropSlice_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/dropslice-eq--8de2e5b7f3ff364c8446c5d4.md) | 155 | `result-track:8de2e5b7f3ff364c8446c5d442953dc51c3d5f1b486d5fba287da31f0dc469ed` |
| 24 | `theorem` | [length_dropSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/length-dropslice--01a6471ff86876225c3a2e89.md) | 161 | `result-track:01a6471ff86876225c3a2e896841df7e40885d813516efd332adfed53a91e136` |
| 25 | `theorem` | [length_dropSlice_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantcfcb8756ea2a3dc0f73afd79ddb8c96ded2ae135b9564ff29816ffd73019c529.lean/declarations/length-dropslice-lt--31b35aa54715a8d191979b08.md) | 172 | `result-track:31b35aa54715a8d191979b088522d0bc96807279f4f6e29e9782780e02a59a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
