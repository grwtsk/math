# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "400243aa1976353a30c1aa7985b1dda160817b80",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `400243aa1976353a30c1aa7985b1dda160817b80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean.json)

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
| 1 | `def` | [quadraticCharFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun--62616a1fd702d709c12cf5d3.md) | 53 | `declaration-track:62616a1fd702d709c12cf5d31fcfca9295871f95c82505735392f8fd741271e0` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-eq-zero-iff--647fef26728ddc34b86ccc40.md) | 75 | `result-track:647fef26728ddc34b86ccc402ba76c20ec96a3a037518be9c683611946b91f3a` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-zero--b134a125d3b050470b32c2bd.md) | 80 | `result-track:b134a125d3b050470b32c2bd7aba99d53f83dc5a4c1f4a0af07da26797b524b4` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-one--b455c0b425e108d2dceaf759.md) | 84 | `result-track:b455c0b425e108d2dceaf759cf3a1fcb8105557d5b4b64f5179d208481d94f91` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-eq-one-of-char-two--04438e45146d3b89bcb2f206.md) | 88 | `result-track:04438e45146d3b89bcb2f2069ab20adbf41b5e8d700d98c34f424ba876c58f25` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two--e83c2f9d2e7f4ce6077b845e.md) | 95 | `result-track:e83c2f9d2e7f4ce6077b845eb223ff0df8f8d1b79f50bcebe74a442f16f6d344` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticcharfun-mul--610758c35637f0e07c32895f.md) | 101 | `result-track:610758c35637f0e07c32895f09be21662e21c273f02ba794adafaa87d092a1c5` |
| 8 | `def` | [quadraticChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar--d509f262381b9cf93dc988b7.md) | 128 | `declaration-track:d509f262381b9cf93dc988b7e6da31244207ae65ff1142403431f5a045fae626` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-eq-zero-iff--e02d28468d33eae3bf8295bf.md) | 135 | `result-track:e02d28468d33eae3bf8295bfbc77bb9f6f1ebfd5c9c9841b32ab4bd1d7012bc1` |
| 10 | `theorem` | [quadraticChar_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-zero--0cdd9f6d7b1ca19abbc0f7b1.md) | 138 | `result-track:0cdd9f6d7b1ca19abbc0f7b1bd340a7dc7bb8a0f17e8ba0115f01b787d5a0252` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-one-iff-issquare--aba85dddb90750d1d978d3be.md) | 142 | `result-track:aba85dddb90750d1d978d3be6d17eb8bcc9635f274369031522e9788308f5544` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-sq-one--a6fb79d36026ccb647f00fb7.md) | 148 | `result-track:a6fb79d36026ccb647f00fb767f0a070bbe2ccf053c22443c9a4b5558b18ca44` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-sq-one--cf89637c58e13a380347778c.md) | 153 | `result-track:cf89637c58e13a380347778c3a8b35ddda8354c1211e3655a94edd8b484377fb` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-dichotomy--06a255a27989cf39b45fe613.md) | 157 | `result-track:06a255a27989cf39b45fe613f37faf16b73edd600b6823b7ef491a06e00d569f` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-eq-neg-one-iff-not-one--a33ac8b702267b35ce61f95c.md) | 162 | `result-track:a33ac8b702267b35ce61f95c644f1f15fbd716410d61703b52faf2b06ea3cdbf` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-neg-one-iff-not-issquare--593e68583b611a54a0d5678b.md) | 167 | `result-track:593e68583b611a54a0d5678bcc2cff30b63730d035da5e6974e82553cc2cac3a` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-exists-neg-one--1a05aa3184e2e25873e534a4.md) | 173 | `result-track:1a05aa3184e2e25873e534a46b0ddd4b80a690cbe9575a4d6d5334ff2738a39f` |
| 18 | `lemma` | [quadraticChar_exists_neg_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-exists-neg-one--cb646b5244da59b8b3aae46c.md) | 177 | `result-track:cb646b5244da59b8b3aae46c94542af2c2d67daabd1b3deec99fdc74dede67d6` |
| 19 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-eq-one-of-char-two--0bc876658fdac6863c95381a.md) | 183 | `result-track:0bc876658fdac6863c95381ab1984d6c85369e3d84dea6291df93be547cba485` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--c31981e69ba63053e1a86830.md) | 189 | `result-track:c31981e69ba63053e1a868309cefbce24a89ab860afaef175b631748e85163cb` |
| 21 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--62996f1c3f0ec5a5ee739753.md) | 193 | `result-track:62996f1c3f0ec5a5ee7397530b811e67633d721345e837e35da68055530c5b38` |
| 22 | `theorem` | [quadraticChar_isQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-isquadratic--2b2405c0f1c82570623abeaf.md) | 207 | `result-track:2b2405c0f1c82570623abeafea5b554e162bd329593518a4fff5b83b542c1996` |
| 23 | `theorem` | [quadraticChar_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-ne-one--177e82af1e13b0f2e033b3f5.md) | 215 | `result-track:177e82af1e13b0f2e033b3f59213f5f730c03c81115bdc1d5a335c8006790828` |
| 24 | `theorem` | [quadraticChar_card_sqrts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-card-sqrts--d8a3d263a91f5a0b869b1a37.md) | 222 | `result-track:d8a3d263a91f5a0b869b1a3732345fd1a72bfb3b727c3ea70689e52e2a8f4edb` |
| 25 | `theorem` | [quadraticChar_sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-sum-zero--40297b9b2f9b532b404d633b.md) | 247 | `result-track:40297b9b2f9b532b404d633b839bdfb25808b6a561b7d6a7004de786140fe4f2` |
| 26 | `theorem` | [quadraticChar_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/quadraticchar-neg-one--cb27e5f1897e9407095fbbd1.md) | 266 | `result-track:cb27e5f1897e9407095fbbd11338000462a59c0e714c24db462c4af0ac863a68` |
| 27 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant6388f92a98e17663cd62c6762d4c6ed314cc112b5c16ed7305972c0e6e5cb85b.lean/declarations/finitefield-issquare-neg-one-iff--ba2e5746ad99bb173ff9a616.md) | 276 | `result-track:ba2e5746ad99bb173ff9a616ceff647fe6b2e6aac5c2839be280936e0bd32048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
