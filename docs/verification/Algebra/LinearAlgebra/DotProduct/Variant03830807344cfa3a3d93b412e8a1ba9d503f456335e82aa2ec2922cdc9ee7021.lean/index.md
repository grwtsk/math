# Verification target: GRWTSK.Algebra.LinearAlgebra.DotProduct.Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7b93d13aa353b51640e56e29a6a3a742f96f14",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7b93d13aa353b51640e56e29a6a3a742f96f14`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dotProduct_stdBasis_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-stdbasis-eq-mul--70fddcc3c8dedb58019a986e.md) | 49 | `result-track:70fddcc3c8dedb58019a986ef4175d16e702de2d0fc31121ec9b5d48de72eaf8` |
| 2 | `theorem` | [dotProduct_stdBasis_one](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-stdbasis-one--a2e57c03444a9e6c913f8abc.md) | 57 | `result-track:a2e57c03444a9e6c913f8abc6d293e68168bee7c38f12188fa12f709cdb36eff` |
| 3 | `theorem` | [dotProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-eq--5e72547e02d36b90bab4623a.md) | 62 | `result-track:5e72547e02d36b90bab4623ac6c9bebfd7ced5ac83e04696a199d9303c3d8ba6` |
| 4 | `theorem` | [dotProduct_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-eq-iff--6f7b57caefa61353f02f9d0b.md) | 67 | `result-track:6f7b57caefa61353f02f9d0bc2002ab53d6df4341dad5777421f67e339a55038` |
| 5 | `theorem` | [dotProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-eq-zero--a4db838dec6b68251f7d8229.md) | 71 | `result-track:a4db838dec6b68251f7d8229c8601eb17fc9096dfd2d8344599462054f2d0633` |
| 6 | `theorem` | [dotProduct_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-eq-zero-iff--755a1626583d7484737ada69.md) | 75 | `result-track:755a1626583d7484737ada69409d0d0af9373c7755eafe036daff87881d20bb9` |
| 7 | `theorem` | [dotProduct_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-self-eq-zero--7a00e69b61451ca75cdd5297.md) | 86 | `result-track:7a00e69b61451ca75cdd5297a3b18190e31396b89f3efe8395e4a751c8c27818` |
| 8 | `theorem` | [dotProduct_star_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-star-self-eq-zero--2560422de83a50d9b6c41303.md) | 97 | `result-track:2560422de83a50d9b6c41303ae4c23fa1493f809a9d03a0c9edacc574b4a4b32` |
| 9 | `theorem` | [dotProduct_self_star_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/dotproduct-self-star-eq-zero--888dd11baa5e6267e57f8422.md) | 104 | `result-track:888dd11baa5e6267e57f842276af218b0a1b89734828f443e86e20470cc2b98f` |
| 10 | `lemma` | [conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/conjtranspose-mul-self-eq-zero--9d92bd276702d8ce2316555d.md) | 110 | `result-track:9d92bd276702d8ce2316555da5daa1b40447988d4087231ee06017bb022644d1` |
| 11 | `lemma` | [self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/self-mul-conjtranspose-eq-zero--1d7016e2fc45db2fdf4be2e4.md) | 116 | `result-track:1d7016e2fc45db2fdf4be2e481e853cd5ab81858d1a1f2729776197b6df78aaf` |
| 12 | `lemma` | [conjTranspose_mul_self_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/conjtranspose-mul-self-mul-eq-zero--6de4e470d8bbe1a9281beaf6.md) | 121 | `result-track:6de4e470d8bbe1a9281beaf659c6316f63199424d9e504d69fc64a3c8974fbf7` |
| 13 | `lemma` | [self_mul_conjTranspose_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/self-mul-conjtranspose-mul-eq-zero--462e43ab90e0c76e9758ecad.md) | 128 | `result-track:462e43ab90e0c76e9758ecad95fe76fe634c09dc5d88b682ae688e7c159a661b` |
| 14 | `lemma` | [mul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/mul-self-mul-conjtranspose-eq-zero--5c52350a1d52176985565c47.md) | 132 | `result-track:5c52350a1d52176985565c477b1ebdf6ff935b15bb5dc70ea68fd80bc6900618` |
| 15 | `lemma` | [mul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/mul-conjtranspose-mul-self-eq-zero--9febd310a93e33324fd78e64.md) | 137 | `result-track:9febd310a93e33324fd78e64c5068bfd60f75599bc3717f131fa3f1cf5b03f5b` |
| 16 | `lemma` | [conjTranspose_mul_self_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/conjtranspose-mul-self-mulvec-eq-zero--baf6468343e78d132a7c02cb.md) | 141 | `result-track:baf6468343e78d132a7c02cb2964dd1c3c71e346fab3dee34d9205a2878e47d0` |
| 17 | `lemma` | [self_mul_conjTranspose_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/self-mul-conjtranspose-mulvec-eq-zero--fa4dbd1da79ddc967a8f2558.md) | 146 | `result-track:fa4dbd1da79ddc967a8f2558f77bd7b050b46c260020249a6f769ba163ba55db` |
| 18 | `lemma` | [vecMul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/vecmul-conjtranspose-mul-self-eq-zero--c93353960cd38df74c39f46f.md) | 150 | `result-track:c93353960cd38df74c39f46f349780c082520a9e0024a073ff9dc91e67c9e92e` |
| 19 | `lemma` | [vecMul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variant03830807344cfa3a3d93b412e8a1ba9d503f456335e82aa2ec2922cdc9ee7021.lean/declarations/vecmul-self-mul-conjtranspose-eq-zero--cb4856a6e2ae7ecb000b719c.md) | 155 | `result-track:cb4856a6e2ae7ecb000b719c8b68b2c1d34cce52e3a4ea2baedbc4497dfb5854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
