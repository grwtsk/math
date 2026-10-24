# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bd972dd0a87cc4725a1d09eb8d5757c4954d38d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bd972dd0a87cc4725a1d09eb8d5757c4954d38d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Rank` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvalues--7b2e9d02953609c70045e72a.md) | 43 | `declaration-track:7b2e9d02953609c70045e72aaa8abd2365cb05aafc6bac97c7a4dc385b20f0f9` |
| 2 | `def` | [eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvalues--c391496242a156aa51891f3d.md) | 47 | `declaration-track:c391496242a156aa51891f3dba7d9e0eaa83bb363b91eb7817670c34bcd35526` |
| 3 | `def` | [eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorbasis--9e15865b348bf75346470c42.md) | 51 | `declaration-track:9e15865b348bf75346470c4210a78fc8561da08436e9b56d06b6518e3287c765` |
| 4 | `lemma` | [mulVec_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/mulvec-eigenvectorbasis--d510717adcfe9bcae654fa7c.md) | 55 | `result-track:d510717adcfe9bcae654fa7c3960f5c75dc8c75aeab551c75ab2a2631b0d4dac` |
| 5 | `theorem` | [spectrum_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/spectrum-toeuclideanlin--47ef77befd8a7604eb06eed6.md) | 63 | `result-track:47ef77befd8a7604eb06eed66abccdef160981d3eba2c6aad0d58d3dbf2878ea` |
| 6 | `theorem` | [eigenvalues_mem_spectrum_real](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvalues-mem-spectrum-real--7171c68104a12df439d7f52f.md) | 67 | `result-track:7171c68104a12df439d7f52f43f8589c1237066c1b0738e59b8eaaee31f77ce3` |
| 7 | `def` | [eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary--2f3116d9e6a4d0660dac5e16.md) | 73 | `declaration-track:2f3116d9e6a4d0660dac5e16f5fe0369f43d3866098faa0a5cd95c0f26773555` |
| 8 | `lemma` | [eigenvectorUnitary_coe](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary-coe--7f580a00f5cb57c1fd7e32dd.md) | 79 | `result-track:7f580a00f5cb57c1fd7e32dd25a37f03b03d52843285ed61a172d37041a961f8` |
| 9 | `theorem` | [eigenvectorUnitary_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary-transpose-apply--2ed9bbbdbad36b7102edd8f0.md) | 86 | `result-track:2ed9bbbdbad36b7102edd8f0a7c9757f03391ebf31b29319f2fc8ae495c2940d` |
| 10 | `theorem` | [eigenvectorUnitary_col_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary-col-eq--23cb8cadcbc40e90b4ea698f.md) | 91 | `result-track:23cb8cadcbc40e90b4ea698fed219daa3fe63737f972472ea05c65425e57b7cb` |
| 11 | `theorem` | [eigenvectorUnitary_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary-apply--400385ab0a180f0ee49f1d72.md) | 96 | `result-track:400385ab0a180f0ee49f1d720bdb5abd93fb1104534e3ffad739bc960c119706` |
| 12 | `theorem` | [eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvectorunitary-mulvec--415ad351916ec6092e13a105.md) | 100 | `result-track:415ad351916ec6092e13a105b6c72e461cd1586a78ef0ee93338116fa5e66478` |
| 13 | `theorem` | [star_eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/star-eigenvectorunitary-mulvec--bf90a0a094f2028b2789a31d.md) | 104 | `result-track:bf90a0a094f2028b2789a31d8a45a2abeb393c5dfec3c447d2f4a41f6af4f073` |
| 14 | `theorem` | [star_mul_self_mul_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/star-mul-self-mul-eq-diagonal--0b5fc9d384f5dbb1099b6ccb.md) | 109 | `result-track:0b5fc9d384f5dbb1099b6ccb3bb1d26d0836c11954e3e2af0554f5e5389eb016` |
| 15 | `theorem` | [spectral_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/spectral-theorem--4c5004c37cb1917bab28ffad.md) | 128 | `result-track:4c5004c37cb1917bab28ffad652695a9dd9f22a7d6435fb7aae36cd8a6c282bc` |
| 16 | `theorem` | [eigenvalues_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/eigenvalues-eq--24e33df33edc6db451ea03c1.md) | 135 | `result-track:24e33df33edc6db451ea03c1197c540a4ca1fdaf85d369e4ac2fa11a4cce8583` |
| 17 | `theorem` | [det_eq_prod_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/det-eq-prod-eigenvalues--fdde24dd4d1eb52bb09a3fc8.md) | 144 | `result-track:fdde24dd4d1eb52bb09a3fc8a99a278f0224168c12d88377545e276d97f70abc` |
| 18 | `lemma` | [rank_eq_rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/rank-eq-rank-diagonal--31714cee4afadb9fc8f968e0.md) | 150 | `result-track:31714cee4afadb9fc8f968e06521f725503e383cec544f7b2ad17cade4549864` |
| 19 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/rank-eq-card-non-zero-eigs--81ab82c51f97f5a8b1b0c3fe.md) | 155 | `result-track:81ab82c51f97f5a8b1b0c3fe7ae7fa721c21a2f571669a5059eb09648152fe94` |
| 20 | `lemma` | [exists_eigenvector_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/declarations/exists-eigenvector-of-ne-zero--2303ed88176579bf20351f3c.md) | 161 | `result-track:2303ed88176579bf20351f3c87956ef005a937f4d7dc1fec3c8b88ce0856b6c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
