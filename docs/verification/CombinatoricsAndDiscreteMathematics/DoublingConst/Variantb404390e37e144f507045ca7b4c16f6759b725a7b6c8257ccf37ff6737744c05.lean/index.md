# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoublingConst.Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b34daa6b3d75843e0179be0dfe24644b81d0bd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b34daa6b3d75843e0179be0dfe24644b81d0bd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst--e5cf3686ed37802695f0fdb4.md) | 41 | `declaration-track:e5cf3686ed37802695f0fdb496f094ecac661d66af7c8b027d80c7b3f6cf94b2` |
| 2 | `def` | [divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst--e5e1a2af68fa5d5a094e050a.md) | 50 | `declaration-track:e5e1a2af68fa5d5a094e050aed1b11e97b7d4cfa3c67117d81b384dac5f8cfb0` |
| 3 | `lemma` | [mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-mul-card--ef0114063bc16b88338c163b.md) | 79 | `result-track:ef0114063bc16b88338c163bd934a0fc9afd906d869f265063ed338a601d1c79` |
| 4 | `lemma` | [divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-mul-card--1dfd1fa021807293e6ccbd7f.md) | 85 | `result-track:1dfd1fa021807293e6ccbd7f43d592931382360c63d14f740496575beaa00185` |
| 5 | `lemma` | [card_mul_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/card-mul-mulconst--071389c8cad53303d81e785d.md) | 91 | `result-track:071389c8cad53303d81e785d18f39289b93e6ee92c1144983ab7f1cb2bd452ac` |
| 6 | `lemma` | [card_mul_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/card-mul-divconst--cd9de824ef0d9b38f7209eeb.md) | 95 | `result-track:cd9de824ef0d9b38f7209eebb94770a6c308bdf3c502cfa35473793e67f5f918` |
| 7 | `lemma` | [mulConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-empty-left--82b2b70903a32131a94ddac4.md) | 99 | `result-track:82b2b70903a32131a94ddac48599cf4e71673ecdc4ca9b96b576cc9bd8ae4b00` |
| 8 | `lemma` | [divConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-empty-left--6d526e5634e7224bc6a62822.md) | 102 | `result-track:6d526e5634e7224bc6a62822c49f1b28bea8d2000437cd9c36608b9ba8ccb2a8` |
| 9 | `lemma` | [mulConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-empty-right--8fc68addfd500af29b667c79.md) | 105 | `result-track:8fc68addfd500af29b667c794c8cd10fdf1b664628f2a723a07f934d7f83bb61` |
| 10 | `lemma` | [divConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-empty-right--a394d81c1f1e5cc4b76d5df6.md) | 108 | `result-track:a394d81c1f1e5cc4b76d5df62680806fc63bc431ea863d2c5861b05a3a87f5ac` |
| 11 | `lemma` | [mulConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-inv-right--4d8e07048996e3d2b509390c.md) | 111 | `result-track:4d8e07048996e3d2b509390cd3fe26418a3f05aea7add4363602b29dc714d8f6` |
| 12 | `lemma` | [divConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-inv-right--8c6df576cf0087bb7247e0ed.md) | 115 | `result-track:8c6df576cf0087bb7247e0edee8244ed5ef37f0a80fa5f95e26f755b45953b29` |
| 13 | `lemma` | [one_le_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/one-le-mulconst--7e4ae3f92071ce33973c65c6.md) | 119 | `result-track:7e4ae3f92071ce33973c65c6d6dc75096b30bcfaf78066fe82b4dbef566f5c0a` |
| 14 | `lemma` | [one_le_mulConst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/one-le-mulconst-self--9a5f6b0c6b2bb7189b4014c7.md) | 125 | `result-track:9a5f6b0c6b2bb7189b4014c780f4c8e724d403218c4dd01630e1598fe5e7ebca` |
| 15 | `lemma` | [one_le_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/one-le-divconst--379ce1318405fd1889aad048.md) | 128 | `result-track:379ce1318405fd1889aad048d70825799befd7869c198814dcf885e8e529bff5` |
| 16 | `lemma` | [one_le_divConst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/one-le-divconst-self--f0b46b264e3ae219a903d8e3.md) | 133 | `result-track:f0b46b264e3ae219a903d8e319b28e6049b19f004296dd9dceddfef5532ed213` |
| 17 | `lemma` | [mulConst_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-le-card--6a3e8eb2d5125464e7bdbcde.md) | 136 | `result-track:6a3e8eb2d5125464e7bdbcdef3508bcf08154f2b9bc48baa58257c4928d97bb8` |
| 18 | `lemma` | [divConst_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-le-card--053b4314b2a5026a20e89e72.md) | 143 | `result-track:053b4314b2a5026a20e89e722aad53edde53341a07a4f0d1dc0e5842a31f073e` |
| 19 | `lemma` | [mulConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-le-inv-dens--3e195fae247a60fc0c3bedb4.md) | 154 | `result-track:3e195fae247a60fc0c3bedb4f81d1e8ad4fea3fbd987ccf656caa6689eaad4bf` |
| 20 | `lemma` | [divConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-le-inv-dens--7ae33efec9c13af43c044971.md) | 159 | `result-track:7ae33efec9c13af43c044971c4ce02b31b65427f01d893c6eaad3b41d47ba410` |
| 21 | `lemma` | [cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/cast-mulconst--a2c2232ae84cc60a55d5e582.md) | 167 | `result-track:a2c2232ae84cc60a55d5e58257ceb98d8e93e87a9fc51f2de2c5c120686e698c` |
| 22 | `lemma` | [cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/cast-divconst--0e82dcfaaa31b1e5d026045f.md) | 170 | `result-track:0e82dcfaaa31b1e5d026045f89f21b84d8dc8585128fc9f63ff7f3cf1947b35a` |
| 23 | `lemma` | [cast_mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/cast-mulconst-mul-card--97150d54461652de336dbe57.md) | 173 | `result-track:97150d54461652de336dbe57743335b328ebd3d2da70c8cddfaabc6b85ec231b` |
| 24 | `lemma` | [cast_divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/cast-divconst-mul-card--0a806034cd6a52a2cca2be0f.md) | 177 | `result-track:0a806034cd6a52a2cca2be0f64a0c01e0bf65ff528474780a399421fc0be9cca` |
| 25 | `lemma` | [card_mul_cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/card-mul-cast-mulconst--e69a1717aa26977ad3ea1170.md) | 181 | `result-track:e69a1717aa26977ad3ea1170ff4b758aaaa0878480ed2786fa00f90134a1a2bc` |
| 26 | `lemma` | [card_mul_cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/card-mul-cast-divconst--6936edbd78192cc1e1a2c48c.md) | 185 | `result-track:6936edbd78192cc1e1a2c48c3ace4f8d99649ee09aa4112dd6aaca3b38d3ef18` |
| 27 | `lemma` | [divConst_le_mulConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-le-mulconst-sq--c6877e0c0a39ce3bb8a0aa36.md) | 195 | `result-track:c6877e0c0a39ce3bb8a0aa361dd611273df58a2ccb9b25733bbb190af06a6ba9` |
| 28 | `lemma` | [mulConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-inv-left--27ec768c03b1422ff2610da0.md) | 212 | `result-track:27ec768c03b1422ff2610da035074916a4ea610cf6a3797e28213e17588aa0c5` |
| 29 | `lemma` | [divConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/divconst-inv-left--11df386c0006d566f3a9e0b4.md) | 216 | `result-track:11df386c0006d566f3a9e0b417998e4359c928ac6e4083df910d64ec1e0d51b9` |
| 30 | `lemma` | [mulConst_le_divConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variantb404390e37e144f507045ca7b4c16f6759b725a7b6c8257ccf37ff6737744c05.lean/declarations/mulconst-le-divconst-sq--25ed8b3944320b6cee87d5f9.md) | 226 | `result-track:25ed8b3944320b6cee87d5f91a51aac7cc2c207830e50ccb76516424176c0137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
