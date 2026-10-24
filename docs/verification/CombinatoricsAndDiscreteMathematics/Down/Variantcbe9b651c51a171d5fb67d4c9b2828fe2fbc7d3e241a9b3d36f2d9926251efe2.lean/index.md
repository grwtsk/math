# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Down.Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191e809ecf34fdd8ec621abf406a64d1d041d4f3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191e809ecf34fdd8ec621abf406a64d1d041d4f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily--663702b4c7ebd6dc78564264.md) | 52 | `declaration-track:663702b4c7ebd6dc785642646241a07d82f7f19f73f9bfe73bb3905656730373` |
| 2 | `def` | [memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily--a937b0255eda282e19943cad.md) | 56 | `declaration-track:a937b0255eda282e19943cad7b8985e8acc42896476226e56946214b74946bf0` |
| 3 | `theorem` | [mem_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/mem-nonmembersubfamily--bea13463eb24ea7ac7971165.md) | 60 | `result-track:bea13463eb24ea7ac7971165ec485a4931c353ef03ad5b55ba2a1230f9bcb8b9` |
| 4 | `theorem` | [mem_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/mem-membersubfamily--cbc89fb46d016b1015dc3474.md) | 64 | `result-track:cbc89fb46d016b1015dc34747034fd3dd1ff9142db41ba7595bb4a1749619a6c` |
| 5 | `theorem` | [nonMemberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily-inter--ee0c40920b5bd93e8d1aa87d.md) | 71 | `result-track:ee0c40920b5bd93e8d1aa87da07cd90ca5ecd1c5bedaa5636735135292af6e08` |
| 6 | `theorem` | [memberSubfamily_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-inter--fa2b474700213d696323afae.md) | 75 | `result-track:fa2b474700213d696323afaec7db0c0748a469b262261c6f189a7b5c6bcc0256` |
| 7 | `theorem` | [nonMemberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily-union--880217549a8f76b048e7cb31.md) | 81 | `result-track:880217549a8f76b048e7cb31c535a33ed261a13f974cf3c078658d1c291ff733` |
| 8 | `theorem` | [memberSubfamily_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-union--84eccdb1762b183f10ac51c0.md) | 85 | `result-track:84eccdb1762b183f10ac51c0bd35d320b79f3e10d611894de43c041a9c4e7a72` |
| 9 | `theorem` | [card_memberSubfamily_add_card_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/card-membersubfamily-add-card-nonmembersubfamily--26e3c09e57c5b69b0b9bf7d1.md) | 89 | `result-track:26e3c09e57c5b69b0b9bf7d1169c2c9b68ec332a16d9776d4a4f7b83d6a52ebc` |
| 10 | `theorem` | [memberSubfamily_union_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-union-nonmembersubfamily--c96259d4e3a7b3d86f5b19c1.md) | 96 | `result-track:c96259d4e3a7b3d86f5b19c1d2597e305e885d82fe30673615bdcee28d729ad1` |
| 11 | `theorem` | [memberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-membersubfamily--9d604417a1abb617d1ff8b15.md) | 110 | `result-track:9d604417a1abb617d1ff8b15d957efb756409773e7cd3fef3b3d4d60d7ac24ab` |
| 12 | `theorem` | [memberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-nonmembersubfamily--97208907e709560494f1e7aa.md) | 115 | `result-track:97208907e709560494f1e7aab0a9f573db2e31a5b7170ec235d00f18a1bf5b2a` |
| 13 | `theorem` | [nonMemberSubfamily_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily-membersubfamily--a9acb690afb40b91bc41c650.md) | 120 | `result-track:a9acb690afb40b91bc41c6501215daa5b161d8822986f5a77f02dbd5d54929d7` |
| 14 | `theorem` | [nonMemberSubfamily_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily-nonmembersubfamily--3e2e1ae140af3f0e34863300.md) | 126 | `result-track:3e2e1ae140af3f0e3486330028dad8ca75512018efb71058aa20e15e6f45b364` |
| 15 | `lemma` | [memberSubfamily_image_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-image-insert--3409530cddf9f6d9785d509e.md) | 131 | `result-track:3409530cddf9f6d9785d509e6437c034ca7bdb8d96990341fe54b587ebfb5905` |
| 16 | `lemma` | [nonMemberSubfamily_image_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/nonmembersubfamily-image-insert--1015b1bf951aeeb50df4ecf4.md) | 139 | `result-track:1015b1bf951aeeb50df4ecf4b2786cbab42d3e00d773cc5c75afb1d380e9fa5e` |
| 17 | `lemma` | [memberSubfamily_image_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/membersubfamily-image-erase--a5f661332acbd49dfdb77bf2.md) | 142 | `result-track:a5f661332acbd49dfdb77bf24f302fead951201007bf0523f17421149e0fbac9` |
| 18 | `lemma` | [image_insert_memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/image-insert-membersubfamily--a99318129a1a1f4803b17bf3.md) | 146 | `result-track:a99318129a1a1f4803b17bf3c32da088732f16b113f0c945592b7152af48f5ee` |
| 19 | `lemma` | [memberFamily_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/memberfamily-induction-on--2dc4e06edd38ebc5fe96af8e.md) | 168 | `result-track:2dc4e06edd38ebc5fe96af8e762e4da1bc4f588e50c5b21f985450b663f8acc5` |
| 20 | `lemma` | [family_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/family-induction-on--ec19a3c4f1c6e165e6a215c2.md) | 201 | `result-track:ec19a3c4f1c6e165e6a215c23989b152655439a99bddd62eed40406489aa681e` |
| 21 | `def` | [compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/compression--a16e9b9e9d2c64655fc6d315.md) | 220 | `declaration-track:a16e9b9e9d2c64655fc6d31520b0bf95b4749337aa772e8a0b1da83e2a5c59b0` |
| 22 | `theorem` | [mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/mem-compression--819c99468c3d3e5e0aa835c9.md) | 231 | `result-track:819c99468c3d3e5e0aa835c9375c77d4f3feec1892cd33e0841ef6af8cdc28ca` |
| 23 | `theorem` | [erase_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/erase-mem-compression--c5034df2a090e1cea372c63e.md) | 240 | `result-track:c5034df2a090e1cea372c63edc9dd389b6d62c6272ca3ed7cc2e1f4af119e2d0` |
| 24 | `theorem` | [erase_mem_compression_of_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/erase-mem-compression-of-mem-compression--94b9d11d2f823be35d2c85c0.md) | 246 | `result-track:94b9d11d2f823be35d2c85c069a673b4f766c2cbf12e92e7279969fb480acd9d` |
| 25 | `theorem` | [mem_compression_of_insert_mem_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/mem-compression-of-insert-mem-compression--286bca5869de636d63c497f2.md) | 251 | `result-track:286bca5869de636d63c497f26f46449f566f9bec1f0749b65768cb4d8e74e1f1` |
| 26 | `theorem` | [compression_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/compression-idem--91d42596bba6512a50708ddc.md) | 259 | `result-track:91d42596bba6512a50708ddc499922cc9d511a438df79d6b0cebee43078bcba3` |
| 27 | `theorem` | [card_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Down/Variantcbe9b651c51a171d5fb67d4c9b2828fe2fbc7d3e241a9b3d36f2d9926251efe2.lean/declarations/card-compression--89f3fe687973a7c4e221e7f1.md) | 268 | `result-track:89f3fe687973a7c4e221e7f1f6ce5cd0942863060adc5c3d16b9abb9bf6f0fec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
