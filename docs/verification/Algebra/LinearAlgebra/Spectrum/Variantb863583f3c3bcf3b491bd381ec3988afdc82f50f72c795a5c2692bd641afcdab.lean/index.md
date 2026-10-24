# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1883f6f954f054d7dfe623e801432e7ba5137442",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1883f6f954f054d7dfe623e801432e7ba5137442`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvalues--0e19d564b6fb40a97bfc7df8.md) | 35 | `declaration-track:0e19d564b6fb40a97bfc7df8b7d738be71008ee5df6d8a3d733166e4e41f1196` |
| 2 | `def` | [eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvalues--e6a97ac265b1ff3a8309f8fe.md) | 39 | `declaration-track:e6a97ac265b1ff3a8309f8fe2f1b10cd58bfa4b763628c062e88b39c0cbe9bb7` |
| 3 | `def` | [eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorbasis--3170cfaf7941f7f0b359059a.md) | 43 | `declaration-track:3170cfaf7941f7f0b359059a771b5f1919136d020b12ef99c60aa334cceb4b74` |
| 4 | `lemma` | [mulVec_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/mulvec-eigenvectorbasis--1ca279ec7674fe9acd2f5911.md) | 47 | `result-track:1ca279ec7674fe9acd2f59112530eef9d3ab89754fdac7313328c9c193345102` |
| 5 | `theorem` | [spectrum_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/spectrum-toeuclideanlin--d920bfb90c405e2edeb01c43.md) | 55 | `result-track:d920bfb90c405e2edeb01c43bb92b78a803918fcbc0721c15364b645649b2afd` |
| 6 | `theorem` | [eigenvalues_mem_spectrum_real](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvalues-mem-spectrum-real--1e719318dda4224b0e9e1797.md) | 59 | `result-track:1e719318dda4224b0e9e17976099daad27fbbf2944bdd43a14d3649f2cc7915b` |
| 7 | `def` | [eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary--3e86e9f8595251125e9f494f.md) | 65 | `declaration-track:3e86e9f8595251125e9f494f4a342c206ee0e9d42d2bc69cd4f1d9726000e118` |
| 8 | `lemma` | [eigenvectorUnitary_coe](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary-coe--f7b2c965a72261b67597505f.md) | 71 | `result-track:f7b2c965a72261b67597505f37c875fdb2c0c3bf4ecdeaa56b9e6faaff9374f5` |
| 9 | `theorem` | [eigenvectorUnitary_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary-transpose-apply--2de593c972cc724172c22f0c.md) | 78 | `result-track:2de593c972cc724172c22f0c38f99b9d2576bc87b47725a3c9ddbaba54f2ed1c` |
| 10 | `theorem` | [eigenvectorUnitary_col_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary-col-eq--87324ab62d145b3dd653879a.md) | 83 | `result-track:87324ab62d145b3dd653879acbcf05f6f207a087bffd37594085f827d0ab0a7b` |
| 11 | `theorem` | [eigenvectorUnitary_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary-apply--3c4c88c8100d7fe7d9ebd881.md) | 88 | `result-track:3c4c88c8100d7fe7d9ebd881fa3b070525bf844e75ba6b4ebfa3c0af97a59ab2` |
| 12 | `theorem` | [eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvectorunitary-mulvec--8ff47d50700d0eaa195bbe7f.md) | 92 | `result-track:8ff47d50700d0eaa195bbe7f702bf0b0de348a89f70779b1e7e7032bbe75d54e` |
| 13 | `theorem` | [star_eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/star-eigenvectorunitary-mulvec--88607ec18ed0307eecef07a4.md) | 96 | `result-track:88607ec18ed0307eecef07a451d776a0eac1486131ff711d48d9d938263ce929` |
| 14 | `theorem` | [star_mul_self_mul_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/star-mul-self-mul-eq-diagonal--b1b09ce77bee8b7d02232e68.md) | 101 | `result-track:b1b09ce77bee8b7d02232e68d41cdeb607f15a3cafbef34ee897a18bf0d79812` |
| 15 | `theorem` | [spectral_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/spectral-theorem--e66bfa37a83fb4998f3abca6.md) | 120 | `result-track:e66bfa37a83fb4998f3abca6bf3a3b1f5f551f769fa2480aedce0275ad5b5b05` |
| 16 | `theorem` | [eigenvalues_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/eigenvalues-eq--58ea987ab1929f442354ea6f.md) | 127 | `result-track:58ea987ab1929f442354ea6f0c160472d1a9d3456afda2230a8e0569cb1e61c0` |
| 17 | `theorem` | [det_eq_prod_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/det-eq-prod-eigenvalues--ed4e3cf0349c298edc95d01a.md) | 136 | `result-track:ed4e3cf0349c298edc95d01a8e022a1cbfcbd05b0084ee2ec5dcaa25a5c1a5e6` |
| 18 | `lemma` | [rank_eq_rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/rank-eq-rank-diagonal--90057b201a237b2055d66ce2.md) | 142 | `result-track:90057b201a237b2055d66ce231622d47643141cc0b355beff617ce7aaba62f11` |
| 19 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/rank-eq-card-non-zero-eigs--1b9ffd61a4759304daf79ec5.md) | 147 | `result-track:1b9ffd61a4759304daf79ec5c3370e2661e7e5a590aca73f7333d70425909a64` |
| 20 | `lemma` | [exists_eigenvector_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/declarations/exists-eigenvector-of-ne-zero--d2e30af32fd037472cccd792.md) | 153 | `result-track:d2e30af32fd037472cccd79287125b1eb3e9783043b7b4c0aa56e143cabed5a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
