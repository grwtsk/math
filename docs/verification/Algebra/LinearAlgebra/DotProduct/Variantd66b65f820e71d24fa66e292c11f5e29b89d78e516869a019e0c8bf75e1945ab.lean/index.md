# Verification target: GRWTSK.Algebra.LinearAlgebra.DotProduct.Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70210207eae9dfc4a61e7eb48c7ce0c60ce76109",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70210207eae9dfc4a61e7eb48c7ce0c60ce76109`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dotProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-eq--26e32da54b6e91fc22fab6f9.md) | 35 | `result-track:26e32da54b6e91fc22fab6f91d6df071a547dc83df930c3a8b3b66efb83c49eb` |
| 2 | `theorem` | [dotProduct_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-eq-iff--29afc7338fda45b99e6e843b.md) | 41 | `result-track:29afc7338fda45b99e6e843bebac60a3e3ce64425d990176a8c3a68fe30f4477` |
| 3 | `theorem` | [dotProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-eq-zero--76dfe920d172e973388ab56c.md) | 46 | `result-track:76dfe920d172e973388ab56cb344d61610807ba44eaa8c2006a08a2a8fd8df37` |
| 4 | `theorem` | [dotProduct_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-eq-zero-iff--05cd84dfd081e9791e4f8433.md) | 52 | `result-track:05cd84dfd081e9791e4f843397cd00634d621d11e56c68c9ae9ac8e5d30bbef9` |
| 5 | `lemma` | [dotProduct_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-nonneg-of-nonneg--fdeb252294ba54b8b7dcba05.md) | 64 | `result-track:fdeb252294ba54b8b7dcba05d0df17fd82831f512422bcbb4bf9871d2dd81e2e` |
| 6 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_right](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-le-dotproduct-of-nonneg-right--98d6dff99826915efe2a46fd.md) | 70 | `result-track:98d6dff99826915efe2a46fd9b319240548027f8ba495595cbb140877574e143` |
| 7 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_left](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-le-dotproduct-of-nonneg-left--db81e11fee48f701037f7593.md) | 78 | `result-track:db81e11fee48f701037f75937b846bac08da200856ace0ad9595ed463aa8f798` |
| 8 | `theorem` | [dotProduct_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-self-eq-zero--24d42e52f14dfdd5b7e0a26f.md) | 93 | `result-track:24d42e52f14dfdd5b7e0a26fde9c402e35665dfb044fd10083af4abe58e1bc12` |
| 9 | `theorem` | [dotProduct_star_self_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-star-self-nonneg--b6d57458f9c5d0282934726c.md) | 107 | `result-track:b6d57458f9c5d0282934726cec7e027cb210015cf8c852fe9a1b7f9524e6affb` |
| 10 | `theorem` | [dotProduct_self_star_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-self-star-nonneg--f4289eea65dac14ceadaeceb.md) | 115 | `result-track:f4289eea65dac14ceadaeceb7acd41564da795286c0a8161e61249dc05a6d159` |
| 11 | `theorem` | [dotProduct_star_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-star-self-eq-zero--f3e26f48ebfaf8c5d1e97d1c.md) | 125 | `result-track:f3e26f48ebfaf8c5d1e97d1c69d20d82d176db9c537563e75ab4baeaa95ea28c` |
| 12 | `theorem` | [dotProduct_self_star_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-self-star-eq-zero--f9aa2a9a7a61acb945f1995a.md) | 134 | `result-track:f9aa2a9a7a61acb945f1995a7df393fae672762668e0d24d0290a9edaaaf4fe1` |
| 13 | `lemma` | [conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/conjtranspose-mul-self-eq-zero--882391296a8ebfeb5349ad36.md) | 144 | `result-track:882391296a8ebfeb5349ad36bfc0d123e49d2ae71311b649023f79e041bc2ae4` |
| 14 | `lemma` | [self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/self-mul-conjtranspose-eq-zero--fa0e99e69929d5ef2dc8ce64.md) | 150 | `result-track:fa0e99e69929d5ef2dc8ce64a7c71c61cf3b4372303b36b53a1b199a3b67e0ca` |
| 15 | `lemma` | [conjTranspose_mul_self_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/conjtranspose-mul-self-mul-eq-zero--4cb18ffdd69d46d77b860dc3.md) | 155 | `result-track:4cb18ffdd69d46d77b860dc3da17f091c70d9beacfc162c3b787b9c87bd96ee6` |
| 16 | `lemma` | [self_mul_conjTranspose_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/self-mul-conjtranspose-mul-eq-zero--ed795e2c29560bd6e9988119.md) | 162 | `result-track:ed795e2c29560bd6e99881199ad555963094169fbf50010e9e042e1106280d40` |
| 17 | `lemma` | [mul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/mul-self-mul-conjtranspose-eq-zero--2792c7eab6872fddcf34ab47.md) | 166 | `result-track:2792c7eab6872fddcf34ab473265d83f5f9b7e4c7517b23f372bd562ea6d70e2` |
| 18 | `lemma` | [mul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/mul-conjtranspose-mul-self-eq-zero--43979b61a4d1b4f401f58810.md) | 171 | `result-track:43979b61a4d1b4f401f5881066983dd46306a8175161a005e85267b6c61ab22f` |
| 19 | `lemma` | [conjTranspose_mul_self_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/conjtranspose-mul-self-mulvec-eq-zero--b0cdf8ea71750046f66d7cd2.md) | 175 | `result-track:b0cdf8ea71750046f66d7cd227ab4df7649442d0a65df56b627aabe11f08a445` |
| 20 | `lemma` | [self_mul_conjTranspose_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/self-mul-conjtranspose-mulvec-eq-zero--d615ea9f11cb96c58eb970a2.md) | 180 | `result-track:d615ea9f11cb96c58eb970a2c495770c0ca56fd0a41063c9128c23ee1f449df2` |
| 21 | `lemma` | [vecMul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/vecmul-conjtranspose-mul-self-eq-zero--126cd4dca271ea91ac946525.md) | 184 | `result-track:126cd4dca271ea91ac9465257abc72e0a93374e8058a3c1c4196f7a56d9d8ff5` |
| 22 | `lemma` | [vecMul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/vecmul-self-mul-conjtranspose-eq-zero--3b9d14487308d8e144629a3c.md) | 189 | `result-track:3b9d14487308d8e144629a3c089324228141dda6f66e61bb6c3c229deb0ea459` |
| 23 | `theorem` | [dotProduct_star_self_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-star-self-pos-iff--651ee142ab0c26b4cc07bca5.md) | 195 | `result-track:651ee142ab0c26b4cc07bca5afba007e0ac3006c5807d83f30b961b20143a1dc` |
| 24 | `theorem` | [dotProduct_self_star_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd66b65f820e71d24fa66e292c11f5e29b89d78e516869a019e0c8bf75e1945ab.lean/declarations/dotproduct-self-star-pos-iff--f6704e2ad850c6cdc9d45a22.md) | 208 | `result-track:f6704e2ad850c6cdc9d45a2211952b88741945159f39dfd1ccb8033d06133360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
