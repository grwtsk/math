# Verification target: GRWTSK.NumberTheory.GaussSum.Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630849d6b0b77c0e8b7f6a56b4c05d0272569afd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630849d6b0b77c0e8b7f6a56b4c05d0272569afd`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussSum](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum--b456d90e7959013516deec2f.md) | 72 | `declaration-track:b456d90e7959013516deec2fe08d5af911c368edcbfd2b16526031160482f9f6` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mulshift--e5aa9b23118201d5f4ec4a74.md) | 76 | `result-track:e5aa9b23118201d5f4ec4a742ee4cdb0ba9256762c705d46689709120de8a673` |
| 3 | `theorem` | [gaussSum_mulShift_eq](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mulshift-eq--b3410d67e999157372f95375.md) | 83 | `result-track:b3410d67e999157372f953757da244b9b46065fd0df58e683d7d0f5cc6982cd3` |
| 4 | `lemma` | [star_gaussSum_eq](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/star-gausssum-eq--6493da69c6b8d9b19d98c7a6.md) | 89 | `result-track:6493da69c6b8d9b19d98c7a6578b77b574857cb99c93f90239bd80292a8a1db3` |
| 5 | `theorem` | [gaussSum_one_one](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-one-one--772b5c8c4895ce68fb93cced.md) | 108 | `result-track:772b5c8c4895ce68fb93cced1ed9954db161a745270ac04306337851eede4d5c` |
| 6 | `theorem` | [gaussSum_one_right](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-one-right--74e3c9497b02aa34ee508fad.md) | 114 | `result-track:74e3c9497b02aa34ee508fad5ea62249ad74b834fdfc25e6f92e57575fa59c39` |
| 7 | `theorem` | [gaussSum_one_left](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-one-left--017b22ed8852a64a125b80a1.md) | 126 | `result-track:017b22ed8852a64a125b80a1566aa64a419a8fc22b769bf5f4e377f27f49620c` |
| 8 | `lemma` | [gaussSum_mul](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mul--0d75fa3eade77dca65c48b87.md) | 149 | `result-track:0d75fa3eade77dca65c48b870fa6b91adc682c3bcda67e77fb5a74f225d26f3b` |
| 9 | `lemma` | [mul_gaussSum_inv_eq_gaussSum](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/mul-gausssum-inv-eq-gausssum--32ecad68372d7f5aa5e1447d.md) | 166 | `result-track:32ecad68372d7f5aa5e1447d85a29a0bf5f25cf0ae3b5d7852bc1bd01827acaa` |
| 10 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mul-aux--c4cf3c8acb539c22cf98fff4.md) | 175 | `result-track:c4cf3c8acb539c22cf98fff44ae4328fbb061808ad540b34b60a6b211379a3d3` |
| 11 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mul-gausssum-eq-card--310111da1d7bc1a4f469c238.md) | 188 | `result-track:310111da1d7bc1a4f469c238d93409aa6ead00fb307c1bb06c2ae27e50470069` |
| 12 | `lemma` | [gaussSum_mul_gaussSum_pow_orderOf_sub_one](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-mul-gausssum-pow-orderof-sub-one--d0bbf208b4e8fbf5f6a6b704.md) | 205 | `result-track:d0bbf208b4e8fbf5f6a6b7047d7ef9d1e6f35ecb6aa50f4f95efd940aa23d54f` |
| 13 | `lemma` | [gaussSum_ne_zero_of_nontrivial](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-ne-zero-of-nontrivial--d70a5dd598058124ad1f6e91.md) | 215 | `result-track:d70a5dd598058124ad1f6e91d01966a3d5728f25992044b510795d342a185aa3` |
| 14 | `theorem` | [gaussSum_sq](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-sq--8e6851ee5d4884c8b5595204.md) | 222 | `result-track:8e6851ee5d4884c8b559520491204735910d836b4208bd6deb93ba4f7cbda3ae` |
| 15 | `theorem` | [gaussSum_frob](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/gausssum-frob--d4aa572448136b32e03fd2c9.md) | 245 | `result-track:d4aa572448136b32e03fd2c912f10ff4bc6b2232ae8ab2b24b921f6bc712e09b` |
| 16 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/mulchar-isquadratic-gausssum-frob--76041cd12c27392e2a43fef1.md) | 254 | `result-track:76041cd12c27392e2a43fef1a965ddb87e30ceed1ea222eb925b622d3162f9e2` |
| 17 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--38951c03e862ed30f6e19e17.md) | 264 | `result-track:38951c03e862ed30f6e19e17df26e01518f0db76dfc3629928d73a59ca7f9550` |
| 18 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/char-card-pow-char-pow--5abe8cd17d6101d105f1aa2f.md) | 287 | `result-track:5abe8cd17d6101d105f1aa2f6f1208a1cb426ca73c0884d0e1cb0f586a6814a1` |
| 19 | `theorem` | [Char.card_pow_card](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/char-card-pow-card--00b1fd494e7a11f4073f0ffe.md) | 303 | `result-track:00b1fd494e7a11f4073f0ffe71f622414eb2f63717ba22f7213c2113302a0e2b` |
| 20 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/declarations/finitefield-two-pow-card--c13b3c9ad1fe2cc2408c58e3.md) | 342 | `result-track:c13b3c9ad1fe2cc2408c58e39933750499f8e63aa8a0407ea041d4b31b1adc97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
