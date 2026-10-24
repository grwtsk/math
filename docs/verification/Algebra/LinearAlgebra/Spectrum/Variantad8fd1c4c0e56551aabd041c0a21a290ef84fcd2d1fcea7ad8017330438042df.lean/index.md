# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630f133ae01b20ef4890d8c29a3a776048af3e73",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630f133ae01b20ef4890d8c29a3a776048af3e73`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Rank` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvalues--db7ce5353cf57f7c3b771550.md) | 49 | `declaration-track:db7ce5353cf57f7c3b7715504dea6071e7a2b492d9fa0d418722b46fa0d3ecd9` |
| 2 | `def` | [eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvalues--7118283fb96919ba87d9d5c7.md) | 54 | `declaration-track:7118283fb96919ba87d9d5c7f334df08f5feb8fe12ffd11bc0ff7158dc78b87d` |
| 3 | `def` | [eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectorbasis--91a0c08a339ca7401cc54736.md) | 59 | `declaration-track:91a0c08a339ca7401cc547366d9d48c277484fcdfef5b6f00b215bfcefdaf050` |
| 4 | `def` | [eigenvectorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectormatrix--efd0d98dc0190d1213c8688e.md) | 65 | `declaration-track:efd0d98dc0190d1213c8688e8eb8fff9c6fe7480e109e2633451bc3408713c91` |
| 5 | `def` | [eigenvectorMatrixInv](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectormatrixinv--e25a6c2f4f9eedd1f1f0a213.md) | 70 | `declaration-track:e25a6c2f4f9eedd1f1f0a21358a76e40455b08ca2d609a4f789278d4464c1c6f` |
| 6 | `theorem` | [eigenvectorMatrix_mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectormatrix-mul-inv--187c06a932a5ed4f959d416b.md) | 74 | `result-track:187c06a932a5ed4f959d416baa5a8d4da97bff38d03ce29ce249e9d0cdca4a31` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/instance--e691e2f7f508ac64fa50fbfc.md) | 78 | `declaration-track:e691e2f7f508ac64fa50fbfc1bcc071b3c4596798c1d37103110d46616f1ad9d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/instance--f11d70dca7f45dd4f29f8e97.md) | 81 | `declaration-track:f11d70dca7f45dd4f29f8e97759395474076e3aef0fb575b13e8ed0a8982af8b` |
| 9 | `theorem` | [eigenvectorMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectormatrix-apply--ff040102a55d9a42a09d62a9.md) | 84 | `result-track:ff040102a55d9a42a09d62a903a02dde42ddffce2f39467d3cd60ab70cf787a1` |
| 10 | `theorem` | [transpose_eigenvectorMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/transpose-eigenvectormatrix-apply--675109ef641829146faedd9e.md) | 90 | `result-track:675109ef641829146faedd9eede299fdc546cbf96c3a0f63e735c7be17305960` |
| 11 | `theorem` | [eigenvectorMatrixInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvectormatrixinv-apply--9a73c6ca3ae72f1a2b544907.md) | 94 | `result-track:9a73c6ca3ae72f1a2b544907831ee6d8615366e7ebbe4f666cf6d1831350704b` |
| 12 | `theorem` | [conjTranspose_eigenvectorMatrixInv](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/conjtranspose-eigenvectormatrixinv--2ce849ead89ec46ee3d420bd.md) | 101 | `result-track:2ce849ead89ec46ee3d420bd89efaf2880befb30332925cdfe341ea59d26b578` |
| 13 | `theorem` | [conjTranspose_eigenvectorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/conjtranspose-eigenvectormatrix--ff017392694a8774b58d6992.md) | 106 | `result-track:ff017392694a8774b58d69920dc7f86df092dfa2d6e58d9fd70df4bba5663f40` |
| 14 | `theorem` | [spectral_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/spectral-theorem--9a763a63d92c49e5fffe1a97.md) | 115 | `result-track:9a763a63d92c49e5fffe1a9716941f9e66051d7694612bb8e2d9bfc30aae7763` |
| 15 | `theorem` | [eigenvalues_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/eigenvalues-eq--7b7f53ce602b674428af6c12.md) | 132 | `result-track:7b7f53ce602b674428af6c12d67528bf48e2ad614bba0995e4f5813ac0d89f20` |
| 16 | `theorem` | [det_eq_prod_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/det-eq-prod-eigenvalues--74c8019a4689c53cdaa40ce1.md) | 145 | `result-track:74c8019a4689c53cdaa40ce16705af03742bc9667d56d36fda0ef044249919c4` |
| 17 | `lemma` | [spectral_theorem'](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/spectral-theorem--f002ce28fad30429d67ad6b8.md) | 154 | `result-track:f002ce28fad30429d67ad6b8fbc6723df817b5e6bcede78704a38234019589ee` |
| 18 | `lemma` | [rank_eq_rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/rank-eq-rank-diagonal--0ed89b91d382c9832eb400ac.md) | 160 | `result-track:0ed89b91d382c9832eb400acd6ad78e7ae062b31b1aa2d1bdd6a0aed3e477d71` |
| 19 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantad8fd1c4c0e56551aabd041c0a21a290ef84fcd2d1fcea7ad8017330438042df.lean/declarations/rank-eq-card-non-zero-eigs--b99fea079260ded0ba31ba87.md) | 169 | `result-track:b99fea079260ded0ba31ba8749fbdbf20f247c117c8d135379c31856590d78e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
