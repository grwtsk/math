# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Seam.Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fd6c9d89e9da4a6c3810a5e4a0f4d033e72fd40",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fd6c9d89e9da4a6c3810a5e4a0f4d033e72fd40`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [riemannZeta_analyticOnNhd_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/riemannzeta-analyticonnhd-compl-one--3e9b69126a24de15123520f0.md) | 30 | `result-track:3e9b69126a24de15123520f01aaf5d496e509d3cbd97b2aa946c0c0867783d6a` |
| 2 | `lemma` | [isConnected_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/isconnected-compl-one--be7e64f4628399eb6fb2b199.md) | 36 | `result-track:be7e64f4628399eb6fb2b19922b919f26294991c9a42bf01d82fc9e05accbc06` |
| 3 | `lemma` | [analyticOrderAt_riemannZeta_ne_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/analyticorderat-riemannzeta-ne-top--03c416257c8d737d483ccee8.md) | 40 | `result-track:03c416257c8d737d483ccee880ecef67b52008dbd85c05da441ae76d0c58f4de` |
| 4 | `theorem` | [ZetaSeam.one_le_mult_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/zetaseam-one-le-mult-holds--168cbe7fc410fc7237dc5251.md) | 50 | `result-track:168cbe7fc410fc7237dc52512171ef692d445d7f9277035f291716c6a388f183` |
| 5 | `lemma` | [riemannZeta_zeros_locallyFinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/riemannzeta-zeros-locallyfinite--c381b75f567d34ac0d87b6c9.md) | 63 | `result-track:c381b75f567d34ac0d87b6c9d6e8352fc761a40878700cb601855278ec084f71` |
| 6 | `theorem` | [ZetaSeam.finite_window_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/zetaseam-finite-window-holds--2c8abb1ba043ff25fa009d81.md) | 91 | `result-track:2c8abb1ba043ff25fa009d81a615093d2bb508c9c791cc27654e4f39ba28edb5` |
| 7 | `theorem` | [ZetaSeam.of_reflect](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/declarations/zetaseam-of-reflect--5b952a943c828a6da603192d.md) | 108 | `result-track:5b952a943c828a6da603192d576eaeecd90d628062cc7adb8f0489f072d3f8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
