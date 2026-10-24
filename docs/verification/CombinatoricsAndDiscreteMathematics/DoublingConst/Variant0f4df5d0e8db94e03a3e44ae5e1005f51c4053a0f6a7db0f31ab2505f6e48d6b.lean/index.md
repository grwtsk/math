# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoublingConst.Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4431c79e03bd9ab033ed9d6bd3519aabadd443",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4431c79e03bd9ab033ed9d6bd3519aabadd443`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean.json)

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
| 1 | `def` | [mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst--f440271667c182823571c2ce.md) | 33 | `declaration-track:f440271667c182823571c2ce451530fb4f3c301014b0fbf3a566bf14a68af1ba` |
| 2 | `def` | [divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst--148fd22e5803fd620688e67f.md) | 42 | `declaration-track:148fd22e5803fd620688e67fa789232ad733b64bbe4b95644a55d0064e39df6f` |
| 3 | `lemma` | [mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-mul-card--ddf451c920351b3ee23aaa46.md) | 71 | `result-track:ddf451c920351b3ee23aaa46608bfa3d69107e8f138f49e5a1c8ece72553e0cd` |
| 4 | `lemma` | [divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-mul-card--47bd91fed9e453d7396e769d.md) | 77 | `result-track:47bd91fed9e453d7396e769d464a58a897924d387ece1694c8618ff5ea7c3fce` |
| 5 | `lemma` | [card_mul_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/card-mul-mulconst--598dd3aa839166e359a99e9e.md) | 83 | `result-track:598dd3aa839166e359a99e9e06e41ccd60d55dbff31fcffc7b4dbd48ee7c394b` |
| 6 | `lemma` | [card_mul_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/card-mul-divconst--4b1e7198c88b369b4c425acb.md) | 87 | `result-track:4b1e7198c88b369b4c425acb926b8499b56736aeea6959ce70050901f2d3403c` |
| 7 | `lemma` | [mulConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-empty-left--305b4e0a1a83631a9b98ea08.md) | 91 | `result-track:305b4e0a1a83631a9b98ea08db0239c51e65d16b0a98d84f2067361e092e6c50` |
| 8 | `lemma` | [divConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-empty-left--ba33a94aa96feb903f75f8db.md) | 94 | `result-track:ba33a94aa96feb903f75f8db22dec9cad9b326ad3980af634a1f09b825271035` |
| 9 | `lemma` | [mulConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-empty-right--664f31a0b3098048006c5970.md) | 97 | `result-track:664f31a0b3098048006c5970d342bc477f0e7334d233f7690101ee1a2dec9ba4` |
| 10 | `lemma` | [divConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-empty-right--87f89ba774d94299190def9e.md) | 100 | `result-track:87f89ba774d94299190def9e86aa94d11415b6429a43f8ce7fa631a672aefa03` |
| 11 | `lemma` | [mulConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-inv-right--1fc42d161eecbcdfd74ca069.md) | 103 | `result-track:1fc42d161eecbcdfd74ca0698c65adbdf1ce231e817723eeedc30da7dee8a6b5` |
| 12 | `lemma` | [divConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-inv-right--93282e9ec459c0e037eca548.md) | 107 | `result-track:93282e9ec459c0e037eca54816642ce509fa42c3729dd2e6ee4e6471dab194ba` |
| 13 | `lemma` | [one_le_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/one-le-mulconst--67e2ed17627c03682b61e062.md) | 111 | `result-track:67e2ed17627c03682b61e062b5acbe22ece79e34a15b69d421fb6a1758f52179` |
| 14 | `lemma` | [one_le_mulConst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/one-le-mulconst-self--0bba486eb3e6bd90ba492bb6.md) | 117 | `result-track:0bba486eb3e6bd90ba492bb648b484757bcc4974884236d17038fbf2c698ede3` |
| 15 | `lemma` | [one_le_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/one-le-divconst--c16599b1179e90f92f474dd6.md) | 120 | `result-track:c16599b1179e90f92f474dd6cf409a60af42b084c7c9affa96b0e7a9683b6f61` |
| 16 | `lemma` | [one_le_divConst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/one-le-divconst-self--94b3035db6369927f1eb2047.md) | 125 | `result-track:94b3035db6369927f1eb20476f743f89b4167b5c4690b882dde76243d6aa8218` |
| 17 | `lemma` | [mulConst_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-le-card--7560fc6c44df45ffabbcded5.md) | 128 | `result-track:7560fc6c44df45ffabbcded520585519c8eaeb47cac448ea0aa8a9e0a413c92a` |
| 18 | `lemma` | [divConst_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-le-card--7e401705ee4f569f66c5d942.md) | 135 | `result-track:7e401705ee4f569f66c5d942bdffe85e3e6cd769ead59a859aa773c842112908` |
| 19 | `lemma` | [mulConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-le-inv-dens--9f5e83e635ebcabcbfcc7b99.md) | 146 | `result-track:9f5e83e635ebcabcbfcc7b992d5f1b589537f7103f6520d684928eef2c29538d` |
| 20 | `lemma` | [divConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-le-inv-dens--1141dda1bb6dc3a473117d16.md) | 151 | `result-track:1141dda1bb6dc3a473117d165b869a0b591674e474bcb2e49245907ed84e8eed` |
| 21 | `lemma` | [cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/cast-mulconst--1e7b54844265bf246cdb0131.md) | 159 | `result-track:1e7b54844265bf246cdb01310825fdd8dfee2543c0ce8c147bff50fe6a654d37` |
| 22 | `lemma` | [cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/cast-divconst--6976c1bca5ad497549bcb41e.md) | 162 | `result-track:6976c1bca5ad497549bcb41e2ef1ab4d723a4bbbe7da652c40687cf4c2210ba6` |
| 23 | `lemma` | [cast_mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/cast-mulconst-mul-card--409f90be6af6fb4b7eec7aee.md) | 165 | `result-track:409f90be6af6fb4b7eec7aee2b1d86e2093d2e5389fa901e3bb886c8ceb430f8` |
| 24 | `lemma` | [cast_divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/cast-divconst-mul-card--3f7de1ab52586b91da60deac.md) | 169 | `result-track:3f7de1ab52586b91da60deac804723ee370b20ea2cffa2074421b51d79271f18` |
| 25 | `lemma` | [card_mul_cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/card-mul-cast-mulconst--d8477f5816ec411542683ffd.md) | 173 | `result-track:d8477f5816ec411542683ffd945bfae7fbce53c84990fbe54a87acbbf64d5aab` |
| 26 | `lemma` | [card_mul_cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/card-mul-cast-divconst--1a625834c1fbd27513292ce2.md) | 177 | `result-track:1a625834c1fbd27513292ce2b8e02cf5495e6b44343c2f7b1b665d0b607906f4` |
| 27 | `lemma` | [divConst_le_mulConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-le-mulconst-sq--ba9e1789733b08b6a8faf60a.md) | 187 | `result-track:ba9e1789733b08b6a8faf60a03dbf80110f4ab897ab1d6d545e02afd98fbfe1a` |
| 28 | `lemma` | [mulConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-inv-left--316c567797aca1202076c3bc.md) | 204 | `result-track:316c567797aca1202076c3bc8ff89bea44b36cecfc4eae1d46424b9f587492b5` |
| 29 | `lemma` | [divConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/divconst-inv-left--e1b679948820a6bc7d8540cb.md) | 208 | `result-track:e1b679948820a6bc7d8540cbb4716a1b84b73c35104a93411136fb789599c8b7` |
| 30 | `lemma` | [mulConst_le_divConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/declarations/mulconst-le-divconst-sq--f980de6d2e7ae671d47c574c.md) | 218 | `result-track:f980de6d2e7ae671d47c574c0fc46db06b8b7bb5f2263a1fce7e0fedab056ed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
