# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Seam.Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b751cc2fd695f6c7df279a726546d8fbcf74c09",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b751cc2fd695f6c7df279a726546d8fbcf74c09`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [riemannZeta_analyticOnNhd_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/riemannzeta-analyticonnhd-compl-one--b35fab253c63147b81d9387e.md) | 38 | `result-track:b35fab253c63147b81d9387e50b666bc13c0efec08da096164e70b817916f54f` |
| 2 | `lemma` | [isConnected_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/isconnected-compl-one--e529a21523a4adadfe8eb062.md) | 44 | `result-track:e529a21523a4adadfe8eb06258463feb46e4778241342e0f7bb279fb0d812132` |
| 3 | `lemma` | [analyticOrderAt_riemannZeta_ne_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/analyticorderat-riemannzeta-ne-top--ce14e742017d166712cc1cdd.md) | 48 | `result-track:ce14e742017d166712cc1cddf9c7c5032f72144469f01f5090ebc5631dbab2d5` |
| 4 | `theorem` | [ZetaSeam.one_le_mult_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/zetaseam-one-le-mult-holds--a6898d938363f560d096f6f9.md) | 58 | `result-track:a6898d938363f560d096f6f9072ff35dcf7ea88ab75643e994752261ebe5a831` |
| 5 | `lemma` | [riemannZeta_zeros_locallyFinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/riemannzeta-zeros-locallyfinite--d547de4b8bece1b3f0844f80.md) | 71 | `result-track:d547de4b8bece1b3f0844f80b8b143e1057e792caa9f3a5582becc267cb6428e` |
| 6 | `theorem` | [ZetaSeam.finite_window_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/zetaseam-finite-window-holds--388841cc357714a3080689fe.md) | 99 | `result-track:388841cc357714a3080689fed455f709d65f6a8e4e4d348e9014ac3226a186a9` |
| 7 | `theorem` | [ZetaSeam.of_reflect](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant6e266dce50296218f035cd7f1c7a2016f21d763258928e53d6ccafaaf3b7ec52.lean/declarations/zetaseam-of-reflect--be0b39c05240f9dc79d5d57e.md) | 116 | `result-track:be0b39c05240f9dc79d5d57e0b1c94ff346fbcff688d16715ad73a18d1dada29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
