# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "397ebf7b662590f51280ad43c3b464a6079444dd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `397ebf7b662590f51280ad43c3b464a6079444dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [featureGram](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/featuregram--a8e03011524c1175b34d00a8.md) | 21 | `declaration-track:a8e03011524c1175b34d00a845e30f5dfa9c8bc4fd6a551c3136d3796564d598` |
| 2 | `theorem` | [complex_gram_norm_square](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/complex-gram-norm-square--1b9883479d89868fdf14eac3.md) | 25 | `result-track:1b9883479d89868fdf14eac303193eaa2b159f7d04c07007f70a7b43e9121d3c` |
| 3 | `theorem` | [real_gram_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/real-gram-sum-squares--f664147cb5fb9712b549511e.md) | 32 | `result-track:f664147cb5fb9712b549511ed130bd8a8af5f60c0e36ae01fcbfb527c9581565` |
| 4 | `theorem` | [complex_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/complex-gram-possemidef--2680eadd65445896cba0d7ff.md) | 41 | `result-track:2680eadd65445896cba0d7ff6eb6060826928469944df56bcfbdcf31da32668c` |
| 5 | `theorem` | [real_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/real-gram-possemidef--13581a22835ed4706c7cfd00.md) | 47 | `result-track:13581a22835ed4706c7cfd008523604856005e5103841ab8526fdd87338e7244` |
| 6 | `theorem` | [complex_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/complex-gram-rank-bound--23cd236c73166a6d0a360054.md) | 51 | `result-track:23cd236c73166a6d0a360054b4de2be8176b5a777f7c290649358d0a674bde7b` |
| 7 | `theorem` | [real_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603.lean/declarations/real-gram-rank-bound--56f971cc1c3433f20e65458b.md) | 56 | `result-track:56f971cc1c3433f20e65458b342a43784e7bf73062eee0fc1fb11127cf84a62c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
