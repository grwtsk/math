# Verification target: GRWTSK.Algebra.LinearAlgebra.DotProduct.Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0449374e67ecb848d4243528b90b36fabbf7a6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0449374e67ecb848d4243528b90b36fabbf7a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dotProduct_stdBasis_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-stdbasis-eq-mul--7561e011bcc87f4866cadc4d.md) | 41 | `result-track:7561e011bcc87f4866cadc4d2735f4445d991d00bdc7f9207addd20ae7320f71` |
| 2 | `theorem` | [dotProduct_stdBasis_one](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-stdbasis-one--ba9ad91594335f04f620cea1.md) | 49 | `result-track:ba9ad91594335f04f620cea1331a7f4413094f7b783555f88b8e4524fd1c3b6a` |
| 3 | `theorem` | [dotProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-eq--45bcfd9871ceccc2ab468669.md) | 54 | `result-track:45bcfd9871ceccc2ab468669142cfff95659ff97b3f0942e212d48193c788656` |
| 4 | `theorem` | [dotProduct_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-eq-iff--1bf5ea8e877291581627b954.md) | 59 | `result-track:1bf5ea8e877291581627b95437e30d401f33c318e0a64ad0fa2d2de2a63f223d` |
| 5 | `theorem` | [dotProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-eq-zero--28b6ad283f9905364754930e.md) | 63 | `result-track:28b6ad283f9905364754930e58618d0b735a7e67022c385ea52c9da6eb76dfa3` |
| 6 | `theorem` | [dotProduct_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-eq-zero-iff--7340d94184050f5ca0e136f6.md) | 67 | `result-track:7340d94184050f5ca0e136f6ef66bb7cb6fedd79ad4c7d3575343356a41d407f` |
| 7 | `theorem` | [dotProduct_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-self-eq-zero--75e1bf4e61262eef3657e2d4.md) | 78 | `result-track:75e1bf4e61262eef3657e2d4307ea5ed610a28690af6069f7c3317d29b075763` |
| 8 | `theorem` | [dotProduct_star_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-star-self-eq-zero--0f90493312bea05b31a9134f.md) | 89 | `result-track:0f90493312bea05b31a9134f7f21c107a12c88ed68a3b589c694ab94e4052f57` |
| 9 | `theorem` | [dotProduct_self_star_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/dotproduct-self-star-eq-zero--711c2ef482b14fc8b058e995.md) | 96 | `result-track:711c2ef482b14fc8b058e99532a23e0c691385b54fef45202fca0ec7721ae1d6` |
| 10 | `lemma` | [conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/conjtranspose-mul-self-eq-zero--fd2ea5678e9a262a596e4894.md) | 102 | `result-track:fd2ea5678e9a262a596e4894ffeb9cbc7d6966786b7f3e003afa266aeb4c25fb` |
| 11 | `lemma` | [self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/self-mul-conjtranspose-eq-zero--67b580b7929005793ff587cf.md) | 108 | `result-track:67b580b7929005793ff587cf96bf3bc218781cf828ac9ce012d7bda3013b331f` |
| 12 | `lemma` | [conjTranspose_mul_self_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/conjtranspose-mul-self-mul-eq-zero--e45a72162b7dee9a40fa3bdb.md) | 113 | `result-track:e45a72162b7dee9a40fa3bdbf556d339291f11e49676e9df895b7e8fdd5b1c0e` |
| 13 | `lemma` | [self_mul_conjTranspose_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/self-mul-conjtranspose-mul-eq-zero--21013fa5d830baf4517318fd.md) | 120 | `result-track:21013fa5d830baf4517318fd4f44e42202f1a079343e3ea6013dda80577f7fa5` |
| 14 | `lemma` | [mul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/mul-self-mul-conjtranspose-eq-zero--b8bd664ffe943dc3d4aa1c15.md) | 124 | `result-track:b8bd664ffe943dc3d4aa1c1512c2d490da8372cabf9c647b0d0ddaa8f0b003a3` |
| 15 | `lemma` | [mul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/mul-conjtranspose-mul-self-eq-zero--0c930652fe0d060749eec962.md) | 129 | `result-track:0c930652fe0d060749eec962298837e74eb6039244a22387d2299168f8e729e9` |
| 16 | `lemma` | [conjTranspose_mul_self_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/conjtranspose-mul-self-mulvec-eq-zero--2d2f377523e0d18c0907b82c.md) | 133 | `result-track:2d2f377523e0d18c0907b82cd43b2b26ea5bfc4cc8e6676cd46f31070ce563b1` |
| 17 | `lemma` | [self_mul_conjTranspose_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/self-mul-conjtranspose-mulvec-eq-zero--42cac223aafe1f8aa501cb9a.md) | 138 | `result-track:42cac223aafe1f8aa501cb9ab62e5e1f5dc1aed221aa58e6e7b90a3cd5542a4c` |
| 18 | `lemma` | [vecMul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/vecmul-conjtranspose-mul-self-eq-zero--e1828a1de7a04dc1fb7468cf.md) | 142 | `result-track:e1828a1de7a04dc1fb7468cf9165b35beac59bced76ccc56a3bbe0b143bb9547` |
| 19 | `lemma` | [vecMul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variantd8122d6d7bc9f4b138832f5a7692cd21aa20731635482301dde8e28e272f479a.lean/declarations/vecmul-self-mul-conjtranspose-eq-zero--ba6b645354abadcd0f0cd388.md) | 147 | `result-track:ba6b645354abadcd0f0cd388c81d972b4ddddf974ef52fd8e2f65e9c4b4fe668` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
