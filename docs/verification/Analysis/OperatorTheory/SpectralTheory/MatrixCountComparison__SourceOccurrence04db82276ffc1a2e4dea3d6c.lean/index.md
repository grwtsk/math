# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88de4aff802aae87fbf78dd2b6f080e2ac222df8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88de4aff802aae87fbf78dd2b6f080e2ac222df8`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean.json)

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
| 1 | `def` | [eigenvalueCut](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecut--0d95293ca8d866f174651958.md) | 20 | `declaration-track:0d95293ca8d866f17465195822746cb9f31cb29b004357cb97a85429adabe67d` |
| 2 | `def` | [eigenvalueCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount--da553141f6ebf50de689649d.md) | 23 | `declaration-track:da553141f6ebf50de689649d91f69f2ab8301f3ec4a94b86e05eb754695f9b7a` |
| 3 | `theorem` | [eigenvalueCount_eq_roots_card](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-eq-roots-card--940a61d1b86aa0f85654fdb4.md) | 28 | `result-track:940a61d1b86aa0f85654fdb428d0592530c313a6970ae9e5d015c8b8875e7375` |
| 4 | `theorem` | [eigenvalueCount_add_of_charpoly_mul](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-add-of-charpoly-mul--83c6658385bcfe94a9e61c3b.md) | 36 | `result-track:83c6658385bcfe94a9e61c3b0c282d1d4e8393b21febdacef4f65d51624ec9a5` |
| 5 | `theorem` | [eigenbasis_repr_action](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenbasis-repr-action--1f0011249928b54cd554194e.md) | 47 | `result-track:1f0011249928b54cd554194e83c311a412fa7c5da0b6ba709140fe5a7889bdb5` |
| 6 | `theorem` | [eigenbasis_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenbasis-quadratic--0e6ee50c9277aaabe53130c4.md) | 56 | `result-track:0e6ee50c9277aaabe53130c400979b1538ab73b9195e809d1f9d6b4c7af4cad6` |
| 7 | `theorem` | [eigenbasis_norm](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenbasis-norm--ecb4dd3e5554fed553a95587.md) | 66 | `result-track:ecb4dd3e5554fed553a955870cd0eb2de85e2712eb64b9bb4f4edaff0163a62b` |
| 8 | `theorem` | [low_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/low-quadratic--21762f586656c6b7caca8253.md) | 72 | `result-track:21762f586656c6b7caca8253ffcd3b465ca5b5e13cc7eb5ba07fc3448de4817d` |
| 9 | `theorem` | [high_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/high-quadratic--a908f00b39d06a4767ec0836.md) | 83 | `result-track:a908f00b39d06a4767ec083676875c800815991852fc1bf3800aacf1d3b9889f` |
| 10 | `def` | [cutSynthesis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/cutsynthesis--82e688fe5f6c6ac65b436966.md) | 107 | `declaration-track:82e688fe5f6c6ac65b436966d0e11a92f8818bda1e6ae2d2c41c9c4a9cfe292a` |
| 11 | `theorem` | [cutSynthesis_repr](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/cutsynthesis-repr--f5ef516df4d01fc494a330b5.md) | 121 | `result-track:f5ef516df4d01fc494a330b5a80ea03ff40942db4020421ae1bc4f567777ba35` |
| 12 | `theorem` | [cutSynthesis_injective](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/cutsynthesis-injective--5d155a130485fbe7fd1cef49.md) | 126 | `result-track:5d155a130485fbe7fd1cef49152d2be01b0cebc531a184766e1ca9c3bb6f2d4e` |
| 13 | `def` | [cutAnalysis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/cutanalysis--b5774eb3846276c0442dca1e.md) | 133 | `declaration-track:b5774eb3846276c0442dca1e5bce2e5a7c5a466e1f7d4e4470aecce3a7f4a7ea` |
| 14 | `theorem` | [eigenvalueCount_le_of_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-le-of-quadratic--38b79472d226642b2a4aacda.md) | 142 | `result-track:38b79472d226642b2a4aacdaa17e03c041efdf4f662d8cc422be72ae03226c85` |
| 15 | `theorem` | [eigenvalueCount_le_of_posSemidef](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-le-of-possemidef--1084a253b46d780dc753acf1.md) | 173 | `result-track:1084a253b46d780dc753acf12bcb81973ef9967a339a9b6729e75b78bd00aed1` |
| 16 | `theorem` | [eigenvalueCount_le_add_finrank_of_kernel](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-le-add-finrank-of-kernel--99f7c38e760d0ef7687b6009.md) | 186 | `result-track:99f7c38e760d0ef7687b6009a802f83ba103be505c62dfa809770fa76f922eba` |
| 17 | `theorem` | [eigenvalueCount_le_add_difference_rank](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-le-add-difference-rank--fc15f17e92276e1d8e4f3516.md) | 219 | `result-track:fc15f17e92276e1d8e4f3516e424a1a32b9335945d4ab3c528822279aa649651` |
| 18 | `theorem` | [eigenvalueCount_difference_bounds_of_kernel](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/declarations/eigenvaluecount-difference-bounds-of-kernel--a4e89dc56421b2744d1659f5.md) | 231 | `result-track:a4e89dc56421b2744d1659f5998795bbadf432db683f2f5662efb7a26357f498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
