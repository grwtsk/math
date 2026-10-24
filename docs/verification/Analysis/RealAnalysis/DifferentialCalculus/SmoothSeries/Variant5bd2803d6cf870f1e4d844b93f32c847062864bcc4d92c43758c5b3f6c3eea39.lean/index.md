# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothSeries.Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee94cb5c66e1df78d5f4b25c4692b3d575b38eb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee94cb5c66e1df78d5f4b25c4692b3d575b38eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_of_summable_hasFDerivAt_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/summable-of-summable-hasfderivat-of-ispreconnected--7634782133fc1786538416f4.md) | 41 | `result-track:7634782133fc1786538416f49492194066bc44da032405d22beb4cc389827ece` |
| 2 | `theorem` | [summable_of_summable_hasDerivAt_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/summable-of-summable-hasderivat-of-ispreconnected--bc2277c5d533d02f1cf7dcd7.md) | 56 | `result-track:bc2277c5d533d02f1cf7dcd7ff5518cb3e4b809065b2badd770a1d89f1ef2746` |
| 3 | `theorem` | [hasFDerivAt_tsum_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/hasfderivat-tsum-of-ispreconnected--f880a45df6885844610f90a0.md) | 68 | `result-track:f880a45df6885844610f90a032968e66771db62882886ff08033118afba2b75a` |
| 4 | `theorem` | [hasDerivAt_tsum_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/hasderivat-tsum-of-ispreconnected--aa151e5ad247e596295989a2.md) | 86 | `result-track:aa151e5ad247e596295989a2f5dfe6b1f6371e48c5ca9fae98671e220401db85` |
| 5 | `theorem` | [summable_of_summable_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/summable-of-summable-hasfderivat--103cfb7770d18bb1b8b2723f.md) | 99 | `result-track:103cfb7770d18bb1b8b2723f4ff489266b87fe4f7124b41101b4aceb641da6c3` |
| 6 | `theorem` | [summable_of_summable_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/summable-of-summable-hasderivat--4d1045aeebd729fa4f29c5d0.md) | 110 | `result-track:4d1045aeebd729fa4f29c5d00178c359d20fefb54e084d07f23d7a7e42cf045a` |
| 7 | `theorem` | [hasFDerivAt_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/hasfderivat-tsum--36c494c6cac4382d52deeb22.md) | 119 | `result-track:36c494c6cac4382d52deeb22fec446f28399b925ffaccaa6ee4d8747741a7679` |
| 8 | `theorem` | [hasDerivAt_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/hasderivat-tsum--00838894373b00d3529a6592.md) | 130 | `result-track:00838894373b00d3529a6592cd1b8862adafdc425435020e42a33b8a166bf4f5` |
| 9 | `theorem` | [differentiable_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/differentiable-tsum--97eb3b9d62ea4d19099445b6.md) | 140 | `result-track:97eb3b9d62ea4d19099445b69e6953e16538e9d89884ad2850337759a3f51a17` |
| 10 | `theorem` | [differentiable_tsum'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/differentiable-tsum--d8b51f4574bfb81476fe95ed.md) | 155 | `result-track:d8b51f4574bfb81476fe95ed9cca46d54c4bca79d084d43dbdfe0331d8735b0a` |
| 11 | `theorem` | [fderiv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/fderiv-tsum-apply--4b05198067940900d92aa39a.md) | 161 | `result-track:4b05198067940900d92aa39a1f81044e90203c27472373579cc870b99e11fc9b` |
| 12 | `theorem` | [deriv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/deriv-tsum-apply--5e2e30006e380c449bab008f.md) | 166 | `result-track:5e2e30006e380c449bab008faa6442747c25867f465ee7e652e88e93e93b4555` |
| 13 | `theorem` | [fderiv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/fderiv-tsum--41e6dc62a4e2a58e6a918b3d.md) | 171 | `result-track:41e6dc62a4e2a58e6a918b3d60e454d33d7b73dc9d1783590219d0a5a5a9b2ee` |
| 14 | `theorem` | [deriv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/deriv-tsum--279c7167869b13e0bac37abf.md) | 177 | `result-track:279c7167869b13e0bac37abffa4b7af631eeb51557ac28f7c0e604283fed20ad` |
| 15 | `theorem` | [iteratedFDeriv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/iteratedfderiv-tsum--f1b4055a568eba81bf19e021.md) | 187 | `result-track:f1b4055a568eba81bf19e021e954d68f264fd1f93c297a7c98a592e8ede27569` |
| 16 | `theorem` | [iteratedFDeriv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/iteratedfderiv-tsum-apply--554025902f3c58a1cf60b403.md) | 211 | `result-track:554025902f3c58a1cf60b4039d72107c0732b22fd8b1d3ba9b118e54e3463a78` |
| 17 | `theorem` | [contDiff_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/contdiff-tsum--3689545383f5c47c06646315.md) | 221 | `result-track:3689545383f5c47c06646315ff31535aacac84e5c84c859f677a01c7ede93f99` |
| 18 | `theorem` | [contDiff_tsum_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant5bd2803d6cf870f1e4d844b93f32c847062864bcc4d92c43758c5b3f6c3eea39.lean/declarations/contdiff-tsum-of-eventually--3d89b9098202fc6f47c4e042.md) | 247 | `result-track:3d89b9098202fc6f47c4e04211c37df7d261401fa6ec30d8e88ef8523dec8813` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
