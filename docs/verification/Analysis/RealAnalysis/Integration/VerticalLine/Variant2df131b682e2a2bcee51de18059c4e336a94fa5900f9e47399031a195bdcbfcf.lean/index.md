# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalLine.Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc4a8b030c00845c3242faa3dbec21eaae5522b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.XiLogDeriv` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula.Bridge` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GammaRBracket` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hfn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/hfn--73fe69938de67477005747ae.md) | 38 | `declaration-track:73fe69938de67477005747ae4a2e84e6989dbe90766f999842230561e199d13f` |
| 2 | `def` | [tilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/tilt--3a5b3a38c0da12812cdb7049.md) | 41 | `declaration-track:3a5b3a38c0da12812cdb704969746cd32cfb0decf92b26ca8da860858b721013` |
| 3 | `theorem` | [tilt_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/tilt-contdiff--86c0a0216d63d728b3c33892.md) | 43 | `result-track:86c0a0216d63d728b3c338923afb801f479cc9470b60e98c6a7b29d6979475c9` |
| 4 | `theorem` | [tilt_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/tilt-hascompactsupport--e3144e08c0bec19e965c8c90.md) | 49 | `result-track:e3144e08c0bec19e965c8c909a3cbaa2ff8d45d1b918924df39854935ad3c6a0` |
| 5 | `theorem` | [Hfn_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/hfn-line--426aa9c563f16742e23ff948.md) | 54 | `result-track:426aa9c563f16742e23ff948ee4391038aeff90aedb54c76b511bb4e2aad01b2` |
| 6 | `theorem` | [tilted_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/tilted-inversion--a6548c0f235a9fced76032c1.md) | 68 | `result-track:a6548c0f235a9fced76032c1b67eeb49fea5517f2c3ced76dfd9c646fe6f5968` |
| 7 | `theorem` | [integrand_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/integrand-eq-tsum--602859a7d6133bcebf2ce5d4.md) | 84 | `result-track:602859a7d6133bcebf2ce5d41a0b5eb8a973afd0d7e0ec57f196e3b51f5dee1c` |
| 8 | `theorem` | [per_n_line_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/per-n-line-integral--c6c7acd124ee69be0769f416.md) | 99 | `result-track:c6c7acd124ee69be0769f4165ed7d979f8a607f11f12fba3e2e2546c381d60b0` |
| 9 | `theorem` | [line_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/line-integral-swap--438241cbcd08745996982d4d.md) | 161 | `result-track:438241cbcd08745996982d4d60b702f712723a702405da9ce8f8b42d981f93ed` |
| 10 | `theorem` | [prime_side_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/prime-side-line--645915660f24d6b6e6fcabe1.md) | 222 | `result-track:645915660f24d6b6e6fcabe15e96e419cf0fbc94c046864d36e02016b2c49901` |
| 11 | `theorem` | [digamma_growth_strip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/digamma-growth-strip--20785c98a55197aa20f76539.md) | 245 | `result-track:20785c98a55197aa20f76539cc0cf0115039d6b0d4114d1e0009a09fc19d6069` |
| 12 | `lemma` | [integrable_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/integrable-line--0609a6d276fd4b6ba1cbd3f7.md) | 414 | `result-track:0609a6d276fd4b6ba1cbd3f727e64614b751a1196769deda938dd56fdc8592ef` |
| 13 | `theorem` | [vertical_line_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/vertical-line-shift--3db2a334f13d9a4e8ad12b4c.md) | 427 | `result-track:3db2a334f13d9a4e8ad12b4c3560447069633e20b18c13e48a7c4c032a78c96a` |
| 14 | `theorem` | [differentiable_paperFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/differentiable-paperft--f32c7a98ab08e2f78ab598f6.md) | 497 | `result-track:f32c7a98ab08e2f78ab598f6145d411dd405c620af6e97c390991e50d7fe5416` |
| 15 | `lemma` | [log_two_add_div_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/log-two-add-div-le--c674c04ad66f410e2c2ec1e2.md) | 552 | `result-track:c674c04ad66f410e2c2ec1e2d1c6018a58ddcf8445297539ccdcac2cdbb081d8` |
| 16 | `lemma` | [norm_paperFT_le_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/norm-paperft-le-uniform--392bb328d6e4e229af8a4acc.md) | 579 | `result-track:392bb328d6e4e229af8a4accd0cb6cc9598c817038a10c4fa9c814f5db65424f` |
| 17 | `lemma` | [norm_logDeriv_Gammaℝ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/norm-logderiv-gamma-le--ed6728f5937d8309175dbcc3.md) | 610 | `result-track:ed6728f5937d8309175dbcc3b30bd7638c0a8069236d9e156c7668a3be725f58` |
| 18 | `theorem` | [gamma_line_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/declarations/gamma-line-shift--eaf7872ef6ef5abb8e22dd58.md) | 643 | `result-track:eaf7872ef6ef5abb8e22dd58f2486f6a937378d2332f4397248b8de3e08cad45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
