# Verification target: GRWTSK.Spectral.MatrixCountComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88de4aff802aae87fbf78dd2b6f080e2ac222df8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/MatrixCountComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88de4aff802aae87fbf78dd2b6f080e2ac222df8`.

Source path: `GRWTSK/Spectral/MatrixCountComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/MatrixCountComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalueCut](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecut--2813881296ccbef25ef88185.md) | 20 | `declaration-track:2813881296ccbef25ef88185da90efa773fbbe4962b19f991b9ece0f641572bf` |
| 2 | `def` | [eigenvalueCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount--a9908aedd5a3476fe953a15c.md) | 23 | `declaration-track:a9908aedd5a3476fe953a15cd9942cbe74b5ac4c0c8c19f9d02b92c0be8c0b73` |
| 3 | `theorem` | [eigenvalueCount_eq_roots_card](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-eq-roots-card--4cd333eac9ee87c89a690a31.md) | 28 | `result-track:4cd333eac9ee87c89a690a31994ba8538c0fee3ec62cd742a4fa0bb9daf9f83b` |
| 4 | `theorem` | [eigenvalueCount_add_of_charpoly_mul](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-add-of-charpoly-mul--d94b0039668ee70e900833e1.md) | 36 | `result-track:d94b0039668ee70e900833e1917d3f837d0707e05a39a0cde0cdc94bec6d17c7` |
| 5 | `theorem` | [eigenbasis_repr_action](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenbasis-repr-action--a5a27e867f2090495e7dab4a.md) | 47 | `result-track:a5a27e867f2090495e7dab4ad351538c18b5c8c60e8f673f670956eea3cee7d3` |
| 6 | `theorem` | [eigenbasis_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenbasis-quadratic--1bc78c74777d4213dd567945.md) | 56 | `result-track:1bc78c74777d4213dd5679456f01a00556627a11704a633c171c23a55d0be6b7` |
| 7 | `theorem` | [eigenbasis_norm](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenbasis-norm--5e1ce280e89112120f83ae78.md) | 66 | `result-track:5e1ce280e89112120f83ae78466f08fa8b7014fd56b5f4c1388cc81411790a7d` |
| 8 | `theorem` | [low_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/low-quadratic--e837a0b9e19f10c73e028a18.md) | 72 | `result-track:e837a0b9e19f10c73e028a18cd8b6755816b0d5da52be235c8c4a64274d4747c` |
| 9 | `theorem` | [high_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/high-quadratic--5cd24a7400ec7e67119faae4.md) | 83 | `result-track:5cd24a7400ec7e67119faae4c2a7336fc477a21988ae3cc03f946d7c41357650` |
| 10 | `def` | [cutSynthesis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/cutsynthesis--fb73671f8e77a3dae1623ea1.md) | 107 | `declaration-track:fb73671f8e77a3dae1623ea1950c8f03c48c72502e5a69b7892fed0e7e51759f` |
| 11 | `theorem` | [cutSynthesis_repr](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/cutsynthesis-repr--84f550fd2f4c57e58e47f876.md) | 121 | `result-track:84f550fd2f4c57e58e47f876d28273cf22be71d22d1643411678f8713fa5c145` |
| 12 | `theorem` | [cutSynthesis_injective](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/cutsynthesis-injective--64d4efaa4d6c54d956f86d9d.md) | 126 | `result-track:64d4efaa4d6c54d956f86d9d0dcdd26564c28b9f380550c92ccf2269500fd312` |
| 13 | `def` | [cutAnalysis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/cutanalysis--901e1c9211812aee2794e3da.md) | 133 | `declaration-track:901e1c9211812aee2794e3daf99f544ba6f507d667efddfdebc123be33038820` |
| 14 | `theorem` | [eigenvalueCount_le_of_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-le-of-quadratic--41f3dc9053eaef65758ca242.md) | 142 | `result-track:41f3dc9053eaef65758ca242eda8d51ff2a45174ba3cf4893fbc06042d2a76d6` |
| 15 | `theorem` | [eigenvalueCount_le_of_posSemidef](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-le-of-possemidef--2ef36893aea76a6fb8f4d6a7.md) | 173 | `result-track:2ef36893aea76a6fb8f4d6a707a58f636a82b9a1858ab8bb9bc484fdab56d387` |
| 16 | `theorem` | [eigenvalueCount_le_add_finrank_of_kernel](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-le-add-finrank-of-kernel--d32fedc481922b925a3391bb.md) | 186 | `result-track:d32fedc481922b925a3391bb2b3a28994d9efc806f5418fdf6b953a26ee68a26` |
| 17 | `theorem` | [eigenvalueCount_le_add_difference_rank](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-le-add-difference-rank--aa071545ca46a7f43c1eb007.md) | 219 | `result-track:aa071545ca46a7f43c1eb007d2dfcb951f2989bd69f4242cce31ebd492cbfc81` |
| 18 | `theorem` | [eigenvalueCount_difference_bounds_of_kernel](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/declarations/eigenvaluecount-difference-bounds-of-kernel--a2db49d8749fe45d717560dc.md) | 231 | `result-track:a2db49d8749fe45d717560dcfef90320170caaf960c2b4d961f188af2d76d00c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
