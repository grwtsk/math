# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b6acbfb6dde82a529570e38c27fc074cde32e21",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b6acbfb6dde82a529570e38c27fc074cde32e21`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [featureGram](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/featuregram--b7385e17d0fafeb63758a0cc.md) | 29 | `declaration-track:b7385e17d0fafeb63758a0cc0c954629c32753b1aa5d6c8dd0aabc01944180e2` |
| 2 | `theorem` | [complex_gram_norm_square](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/complex-gram-norm-square--8eae05a75ffef27483c9457f.md) | 33 | `result-track:8eae05a75ffef27483c9457f9f01641f34e3fbfccc60c1efeac3deee48c5b60b` |
| 3 | `theorem` | [real_gram_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/real-gram-sum-squares--5c75b3a8cc9e803ba4760ef3.md) | 40 | `result-track:5c75b3a8cc9e803ba4760ef3ff48d544c7bbadfb494e06cd8594b80e7432bd33` |
| 4 | `theorem` | [complex_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/complex-gram-possemidef--7ffe2723f577c7d29389661a.md) | 49 | `result-track:7ffe2723f577c7d29389661ac0982203c33a1db68281685b3f9973e266916027` |
| 5 | `theorem` | [real_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/real-gram-possemidef--73a956445a43bfb18a4c6410.md) | 55 | `result-track:73a956445a43bfb18a4c64107732126af78359861119e9093a4e1f780fe0e6f6` |
| 6 | `theorem` | [complex_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/complex-gram-rank-bound--45c00127385bb07f972f20f5.md) | 59 | `result-track:45c00127385bb07f972f20f57c27114a4e7430fa1ecf4361e15ffd2eff881557` |
| 7 | `theorem` | [real_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0.lean/declarations/real-gram-rank-bound--79c6c1aea39757a2538b4570.md) | 64 | `result-track:79c6c1aea39757a2538b4570400b79513ca60be09c6a94bbcf084eda7fd2cfee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
