# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lemmas.Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e304c5a15b4b55782d29a4ffa84c5696ab580935",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e304c5a15b4b55782d29a4ffa84c5696ab580935`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Eval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_comp_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-comp-le--da5eaa91a1ce2e3bf496f95f.md) | 45 | `result-track:da5eaa91a1ce2e3bf496f95fe18b1c900c59a9f66d99e65afb98cd3b89fd3cc9` |
| 2 | `theorem` | [degree_pos_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/degree-pos-of-root--20071e11b9c920218c2e709c.md) | 71 | `result-track:20071e11b9c920218c2e709c01adc19730c1fbdcad32936f9457ba90cbeaf604` |
| 3 | `theorem` | [natDegree_le_iff_coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-le-iff-coeff-eq-zero--0024de91cc05a540f8852b88.md) | 79 | `result-track:0024de91cc05a540f8852b88f3910d16dbe2d5ecda4c76a694b6dc84ce5c8831` |
| 4 | `theorem` | [natDegree_add_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-add-le-iff-left--5c86c0877b8e315d0baf80e5.md) | 84 | `result-track:5c86c0877b8e315d0baf80e53ce8e8a7b979f9e05d18a6bd54d4a9907972dff9` |
| 5 | `theorem` | [natDegree_add_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-add-le-iff-right--4cf603abdf68758847ad458d.md) | 92 | `result-track:4cf603abdf68758847ad458dcb9f4af809233db433cc532a226cee40035aebec` |
| 6 | `theorem` | [natDegree_C_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-c-mul-le--3fd946746ddc76831bc5c79b.md) | 98 | `result-track:3fd946746ddc76831bc5c79b53da94783fa14a94c1f772e011a1e91e3dc3d089` |
| 7 | `theorem` | [natDegree_mul_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-mul-c-le--32b642376fb6743afd52e169.md) | 106 | `result-track:32b642376fb6743afd52e169b473a51dfa939b9619e5d9972879822981aa6439` |
| 8 | `theorem` | [eq_natDegree_of_le_mem_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/eq-natdegree-of-le-mem-support--cb9f6e54d9261bb2091686e5.md) | 114 | `result-track:cb9f6e54d9261bb2091686e5284cec829c438f5f263b53e4698ae60584e9aef3` |
| 9 | `theorem` | [natDegree_C_mul_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-c-mul-eq-of-mul-eq-one--1d9717ce3cdd3bddb73e3585.md) | 119 | `result-track:1d9717ce3cdd3bddb73e3585e4b9bc809db97a4001f5dd7e6fde1b3a0a0eb366` |
| 10 | `theorem` | [natDegree_mul_C_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-mul-c-eq-of-mul-eq-one--56e54e70853225c02a1bd170.md) | 129 | `result-track:56e54e70853225c02a1bd170ba3ed6c39c91435c1a709b6588d48cf8c4447ab6` |
| 11 | `theorem` | [natDegree_mul_C_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-mul-c-eq-of-mul-ne-zero--0a98e117f5ad5ea013725102.md) | 142 | `result-track:0a98e117f5ad5ea013725102dd5b9a043debfd29ab82a0e5f63ae4b6eb512449` |
| 12 | `theorem` | [natDegree_C_mul_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-c-mul-eq-of-mul-ne-zero--1d02a6983bc78e68bc38f57d.md) | 153 | `result-track:1d02a6983bc78e68bc38f57d8a0cc2648798d803f3a9befa2b77b569bad01f23` |
| 13 | `theorem` | [natDegree_add_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-add-coeff-mul--fbcaf9fbfe475fe578b542cb.md) | 161 | `result-track:fbcaf9fbfe475fe578b542cbe021cf82df0f983b15f088eab775a2612363303e` |
| 14 | `theorem` | [natDegree_lt_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-lt-coeff-mul--29dd63df9ac3d40f4436620c.md) | 166 | `result-track:29dd63df9ac3d40f4436620c1f29de87a80d9d7f4a2935bd996b546b0032e4aa` |
| 15 | `theorem` | [coeff_mul_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-mul-of-natdegree-le--cf4646379b4d6d2165c1be95.md) | 171 | `result-track:cf4646379b4d6d2165c1be95f7cd63e2c5650dfc8c9db4583a72326a21439caa` |
| 16 | `theorem` | [coeff_pow_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-pow-of-natdegree-le--d2ba872a95c6149557805c45.md) | 183 | `result-track:d2ba872a95c6149557805c45217d0fe0846a1999e946fe7134504d6f8597764f` |
| 17 | `theorem` | [coeff_pow_eq_ite_of_natDegree_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-pow-eq-ite-of-natdegree-le-of-le--a84873123a8398e886f2ad97.md) | 192 | `result-track:a84873123a8398e886f2ad97e440455d55dc333bacf0d1049153617d981679e9` |
| 18 | `theorem` | [coeff_add_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-add-eq-left-of-lt--76fcdfe42e080983eec97024.md) | 200 | `result-track:76fcdfe42e080983eec970243e63f8af90a14129e028037a1d8440ef12871178` |
| 19 | `theorem` | [coeff_add_eq_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-add-eq-right-of-lt--bfe886d5b20c5e75b55051d6.md) | 205 | `result-track:bfe886d5b20c5e75b55051d687b40b7a7ee09b453ea7c01f431fc35fa73e7da7` |
| 20 | `theorem` | [degree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/degree-sum-eq-of-disjoint--b394960a5ec44ec50d988a6f.md) | 210 | `result-track:b394960a5ec44ec50d988a6f342389c171ca7813838d89313f72732d4597aaf5` |
| 21 | `theorem` | [natDegree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-sum-eq-of-disjoint--fdc40378cd27cf19e34140b8.md) | 235 | `result-track:fdc40378cd27cf19e34140b8051a97605c66c99796286d35634767c56ddfffa6` |
| 22 | `theorem` | [natDegree_bit0](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-bit0--19ee7674c60c37d31ac97254.md) | 269 | `result-track:19ee7674c60c37d31ac97254467693301ae3ea28c4f12b54e6d1f41feb088ea2` |
| 23 | `theorem` | [natDegree_bit1](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-bit1--4bbbbea0c26418b62532d6d3.md) | 274 | `result-track:4bbbbea0c26418b62532d6d391b67846130cd1c3d2d7a290b79500af026b1298` |
| 24 | `theorem` | [natDegree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-pos-of-eval-root--9f52adce03bbcbaffafc0ff9.md) | 280 | `result-track:9f52adce03bbcbaffafc0ff9b6f795683c3c83c195526c34872f796cd9c4567c` |
| 25 | `theorem` | [degree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/degree-pos-of-eval-root--f9a6210fd85bf9b6209b55fc.md) | 289 | `result-track:f9a6210fd85bf9b6209b55fc09fa2d2a18b416bb4fd569bb3086c31309ae02c5` |
| 26 | `theorem` | [coe_lt_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coe-lt-degree--5c8192307eb69f4a0cb05813.md) | 295 | `result-track:5c8192307eb69f4a0cb058130bc6c43c9844b0beb873d05dc9f01e87c2c26df9` |
| 27 | `theorem` | [natDegree_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-sub--aefc8da64cbcc38d3059cb03.md) | 309 | `result-track:aefc8da64cbcc38d3059cb0358388cdb6bd57d6f9d1589915abd2f0bdbd87e30` |
| 28 | `theorem` | [natDegree_sub_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-sub-le-iff-left--3ffe2afcfa4652b37ce80625.md) | 312 | `result-track:3ffe2afcfa4652b37ce80625c00eec98970b3acdc6aab16645bcec83d3f1ef00` |
| 29 | `theorem` | [natDegree_sub_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-sub-le-iff-right--2622b1d08333906745e2e9cd.md) | 318 | `result-track:2622b1d08333906745e2e9cdf72c89b206f03bba2ceafcb4a8d8ac5aa3ca0e9f` |
| 30 | `theorem` | [coeff_sub_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-sub-eq-left-of-lt--514da436a4cc89ce65e4187b.md) | 322 | `result-track:514da436a4cc89ce65e4187b4ef9381a21b970def14c9d941a0bb11f1d4a35af` |
| 31 | `theorem` | [coeff_sub_eq_neg_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/coeff-sub-eq-neg-right-of-lt--a1cbdc027aece7e2c6f194d9.md) | 327 | `result-track:a1cbdc027aece7e2c6f194d9d52baa370818a6ae3078ea46e29c373e3ebefeec` |
| 32 | `theorem` | [degree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/degree-mul-c--586ac6c4a9a66f917f1804e6.md) | 337 | `result-track:586ac6c4a9a66f917f1804e6397dcf96834562a24608d0abe495d3c938f431bc` |
| 33 | `theorem` | [degree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/degree-c-mul--303810f7352fb7bdabf52d1f.md) | 342 | `result-track:303810f7352fb7bdabf52d1fd3daf8b424801438e1b876da8ab90073c91ee33d` |
| 34 | `theorem` | [natDegree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-mul-c--11d3344d5a2d3a5cff35b48d.md) | 347 | `result-track:11d3344d5a2d3a5cff35b48d119a9487c450791f0557a5ea14ec4505ad1a8eca` |
| 35 | `theorem` | [natDegree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-c-mul--a2ab898672d2a7c84b8c295e.md) | 352 | `result-track:a2ab898672d2a7c84b8c295e061d6a6e880194e7175aeb4a3e1102c875062f8d` |
| 36 | `theorem` | [natDegree_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-comp--252b4559362d34cd487095df.md) | 357 | `result-track:252b4559362d34cd487095dfd0496d48020f10d76bec8b2c714e9db01ce050d3` |
| 37 | `theorem` | [natDegree_iterate_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/natdegree-iterate-comp--a435b7faf618090f216440ed.md) | 369 | `result-track:a435b7faf618090f216440ed7dc11bb57e9d9617c4a9e46ad1111dcdb537c303` |
| 38 | `theorem` | [leadingCoeff_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/declarations/leadingcoeff-comp--fb392723e9387d8d69311250.md) | 376 | `result-track:fb392723e9387d8d6931125017468bc1a20773aa0b51e9024e2f25f69bb1ce94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
