# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Down.Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c47bdf6d24b36ee4ca647662e14a0ba4e10c448",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c47bdf6d24b36ee4ca647662e14a0ba4e10c448`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily--1b01467a9c835533134f8f31.md) | 44 | `declaration-track:1b01467a9c835533134f8f316dc42ae3a6cd30e1b2f30acb6dd2d1b2e67d4096` |
| 2 | `def` | [memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily--6ff4d14e5c5a00c1d348098d.md) | 48 | `declaration-track:6ff4d14e5c5a00c1d348098daaa611c72eb8c02756a23069f2ffadefff6b38d0` |
| 3 | `theorem` | [mem_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/mem-nonmembersubfamily--af84167c56b8c7a1f5a76ea1.md) | 52 | `result-track:af84167c56b8c7a1f5a76ea11c319dbf69ce62b32412cfd716a0c3b6bab99677` |
| 4 | `theorem` | [mem_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/mem-membersubfamily--abceeb3642a1f6ad0a475c83.md) | 56 | `result-track:abceeb3642a1f6ad0a475c83d7bcc98cdb82dbd45f3bc926ae0a0a26a0013629` |
| 5 | `theorem` | [nonMemberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily-inter--f0fa50b85280d3bb3098bbb5.md) | 63 | `result-track:f0fa50b85280d3bb3098bbb5a812c956d58ee6996665b3c52d32a91acc50c4fc` |
| 6 | `theorem` | [memberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-inter--b30147e152a17dc5c6b6a329.md) | 67 | `result-track:b30147e152a17dc5c6b6a329f57eb17cf21793e445405ebf6022a7300d7f0789` |
| 7 | `theorem` | [nonMemberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily-union--1ea5ba70ef6ecca9ca0f64bc.md) | 73 | `result-track:1ea5ba70ef6ecca9ca0f64bc4937a3412ba1b20fa99e76796e29bfbdc6da9287` |
| 8 | `theorem` | [memberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-union--6b8412a50001375e66de1f2e.md) | 77 | `result-track:6b8412a50001375e66de1f2e08070c692b45007cdd94b22232c3ec726777f213` |
| 9 | `theorem` | [card_memberSubfamily_add_card_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/card-membersubfamily-add-card-nonmembersubfamily--50000f43fc6c0c4e51aed594.md) | 81 | `result-track:50000f43fc6c0c4e51aed59487c5296511ebeb1359aad68e549682a3942f6f6a` |
| 10 | `theorem` | [memberSubfamily_union_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-union-nonmembersubfamily--e23760d60a40a3564f51a512.md) | 88 | `result-track:e23760d60a40a3564f51a512b658e600ff6c7fb52d02dbf5596da79d376bb7dd` |
| 11 | `theorem` | [memberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-membersubfamily--d0b2864041e40ae2ef1ecb49.md) | 102 | `result-track:d0b2864041e40ae2ef1ecb491fd2be587849b1cc8f4f7f704fdc9905f5a54a55` |
| 12 | `theorem` | [memberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-nonmembersubfamily--63dd83cde44e198f0c00ee4c.md) | 107 | `result-track:63dd83cde44e198f0c00ee4cbe7ac3e1e24d66b6ac1dd2c99bc2b80dd849c860` |
| 13 | `theorem` | [nonMemberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily-membersubfamily--c229d279e093c57bcf52fc46.md) | 112 | `result-track:c229d279e093c57bcf52fc46fb42ef274bebc229fa89aa7dc9ecf3aba1ceac16` |
| 14 | `theorem` | [nonMemberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily-nonmembersubfamily--888892e1c9539e9cf30a0aeb.md) | 118 | `result-track:888892e1c9539e9cf30a0aeba7136f3a1e48c311c725a20a5f9db4e7a64885ee` |
| 15 | `lemma` | [memberSubfamily_image_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-image-insert--d918d570c6e88e96c02aa0d0.md) | 123 | `result-track:d918d570c6e88e96c02aa0d0ee413141305fac33c892530eb865afb472674db5` |
| 16 | `lemma` | [nonMemberSubfamily_image_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/nonmembersubfamily-image-insert--816e0b8e33c0fb1bfe1352e0.md) | 131 | `result-track:816e0b8e33c0fb1bfe1352e045faa3b6120d811cc9fb8b1f41be55ef90dd5eac` |
| 17 | `lemma` | [memberSubfamily_image_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/membersubfamily-image-erase--d138c030dde58477654011ce.md) | 134 | `result-track:d138c030dde58477654011cebae82e03602488bd624d03074910142b117d341e` |
| 18 | `lemma` | [image_insert_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/image-insert-membersubfamily--3a49ee91459fe94efa87e6c4.md) | 138 | `result-track:3a49ee91459fe94efa87e6c4a761a7ab8da131d88f21d9f9f515a79aae515c4b` |
| 19 | `lemma` | [memberFamily_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/memberfamily-induction-on--758eec9ac48e0e03fc024802.md) | 160 | `result-track:758eec9ac48e0e03fc0248024ce20613fc4f5b94094c65096c1d6a19a8cb5924` |
| 20 | `lemma` | [family_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/family-induction-on--27879c4d66205b6fc2b88ee1.md) | 193 | `result-track:27879c4d66205b6fc2b88ee13313024f0b4d0b6b16cf4bf0067bd0108b331392` |
| 21 | `def` | [compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/compression--1d9dc076b74dff17d699a85a.md) | 212 | `declaration-track:1d9dc076b74dff17d699a85ac2f504ab2496129d3a970ee997db3a0f925c4e73` |
| 22 | `theorem` | [mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/mem-compression--bd88fad1269f4557a183424d.md) | 223 | `result-track:bd88fad1269f4557a183424dabc124747a0b2522cfbbcb6e2805d927713fcc9b` |
| 23 | `theorem` | [erase_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/erase-mem-compression--167b57948073c045f7613405.md) | 232 | `result-track:167b57948073c045f7613405559fe666d688893de2647fd27e4ddb3d6b1a4c20` |
| 24 | `theorem` | [erase_mem_compression_of_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/erase-mem-compression-of-mem-compression--16692672aeed04c56900eb62.md) | 238 | `result-track:16692672aeed04c56900eb62542e94dd1820e3b968194625ec457a02533474e8` |
| 25 | `theorem` | [mem_compression_of_insert_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/mem-compression-of-insert-mem-compression--a451ce7c79dfe1df104bffeb.md) | 243 | `result-track:a451ce7c79dfe1df104bffebdc56b1fa02941f5d1bb3ef8d430c60234dbfea93` |
| 26 | `theorem` | [compression_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/compression-idem--b18e8be5dc3b009262765ddb.md) | 251 | `result-track:b18e8be5dc3b009262765ddba48622c7d717bd872dff32b0a8e359c28bcab768` |
| 27 | `theorem` | [card_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/declarations/card-compression--954963c9007bc3e915a7ddde.md) | 260 | `result-track:954963c9007bc3e915a7ddde8f8b3b18c4755e91ce481c30d23c1321d5fab6ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
