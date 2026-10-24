# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalLine.Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.XiLogDeriv` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula.Bridge` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GammaRBracket` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hfn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/hfn--8c57424d835550340bea4b76.md) | 46 | `declaration-track:8c57424d835550340bea4b7647124253d825d1fefaab2956d3ba69058cafeccb` |
| 2 | `def` | [tilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/tilt--1eea71c5fd4a3e60cbd79681.md) | 49 | `declaration-track:1eea71c5fd4a3e60cbd796814873fd1fe9e65a82efbcb3da004abc1aa1396e6c` |
| 3 | `theorem` | [tilt_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/tilt-contdiff--cb74360610891b918ee8b42f.md) | 51 | `result-track:cb74360610891b918ee8b42f2702caf278af0d14197fc1e4bb2615a406682a72` |
| 4 | `theorem` | [tilt_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/tilt-hascompactsupport--1ac7b3de94616ccfcd5155fc.md) | 57 | `result-track:1ac7b3de94616ccfcd5155fc35921809209bbc8396236ed9ed79c88b34bb871b` |
| 5 | `theorem` | [Hfn_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/hfn-line--9e2cf4e6a35c02c30128eee2.md) | 62 | `result-track:9e2cf4e6a35c02c30128eee21004944cc92806814d48af6045aa5cf0adb4997f` |
| 6 | `theorem` | [tilted_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/tilted-inversion--119eb0bcc679267165fa8e04.md) | 76 | `result-track:119eb0bcc679267165fa8e043d566f7e851382fb98a54e53f97c9ca5f05aee74` |
| 7 | `theorem` | [integrand_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/integrand-eq-tsum--4898a9eab9d704b7cbbefc24.md) | 92 | `result-track:4898a9eab9d704b7cbbefc24c582fea0ce758bdf02639463f7c96c1ada141e7d` |
| 8 | `theorem` | [per_n_line_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/per-n-line-integral--6f281d5535ca4fe2d99a8705.md) | 107 | `result-track:6f281d5535ca4fe2d99a8705bdfa533e5184e9f3614904df353a3a42609de5ac` |
| 9 | `theorem` | [line_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/line-integral-swap--bed737a7e0025c9651fe62d5.md) | 169 | `result-track:bed737a7e0025c9651fe62d55bc6fbe6447ebca7652fce4a7346e208cd67f208` |
| 10 | `theorem` | [prime_side_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/prime-side-line--6409364bc6fdc8978945cd8d.md) | 230 | `result-track:6409364bc6fdc8978945cd8d031a8720ba6caafeb3f3d2bdabfcf5251c540bb8` |
| 11 | `theorem` | [digamma_growth_strip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/digamma-growth-strip--9e20f53f1c3fabdf0de0d602.md) | 253 | `result-track:9e20f53f1c3fabdf0de0d6020c492d2c06037b55f37d5b541b7bfd7eaf5db25e` |
| 12 | `lemma` | [integrable_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/integrable-line--ff378e91c8f9307289f64be0.md) | 422 | `result-track:ff378e91c8f9307289f64be07c35acb592cd9ce0782835d6ba0427017924bd6b` |
| 13 | `theorem` | [vertical_line_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/vertical-line-shift--5fac1f546d840b40d0cbe125.md) | 435 | `result-track:5fac1f546d840b40d0cbe125aafc45d3dabf7b1e70e7999be584b059aca6aade` |
| 14 | `theorem` | [differentiable_paperFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/differentiable-paperft--3b6b68f47d7e15db4b5a2e4b.md) | 505 | `result-track:3b6b68f47d7e15db4b5a2e4b7e0ec93f6c3cb4bc83fb5ea990a4bc98649f2c8a` |
| 15 | `lemma` | [log_two_add_div_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/log-two-add-div-le--12f3ad4d2f6c5e888d3b7b73.md) | 560 | `result-track:12f3ad4d2f6c5e888d3b7b73c436c94f1e151c145fb75655a914bc8d3ccf138c` |
| 16 | `lemma` | [norm_paperFT_le_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/norm-paperft-le-uniform--13a4766a018d1571dfa59583.md) | 587 | `result-track:13a4766a018d1571dfa595833dfe22ff4fc974a5e4e70693eaa9b8bd3712057f` |
| 17 | `lemma` | [norm_logDeriv_Gammaℝ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/norm-logderiv-gamma-le--56aa632e98acbfa7ea4a10bf.md) | 618 | `result-track:56aa632e98acbfa7ea4a10bf895a511a8274486f72e77d1bfe7baf0bba91ea76` |
| 18 | `theorem` | [gamma_line_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/declarations/gamma-line-shift--e4baaacb25a53eb338117c7d.md) | 651 | `result-track:e4baaacb25a53eb338117c7ddb7d4d6ac8ad0abf3cc7a0c1b4da1292c3e96b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
