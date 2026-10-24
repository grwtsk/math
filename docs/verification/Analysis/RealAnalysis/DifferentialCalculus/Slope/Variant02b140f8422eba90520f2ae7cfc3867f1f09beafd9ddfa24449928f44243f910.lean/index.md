# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Slope.Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07707dc85420bc8696b40af15a2ae4a12aa8b4bd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07707dc85420bc8696b40af15a2ae4a12aa8b4bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAtFilter_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivatfilter-iff-tendsto-slope--567327fe7d28448c2f2bc6ec.md) | 46 | `result-track:567327fe7d28448c2f2bc6eca63273b2a0d22662e9ba661e4f3a79beed2ccf0f` |
| 2 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-iff-tendsto-slope--1481fc49239dd49adfed6288.md) | 60 | `result-track:1481fc49239dd49adfed62889c93483a8f8f5c81067c314abc8fe99957284012` |
| 3 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-iff-tendsto-slope--8e46734fefbd43ceb7f019f1.md) | 65 | `result-track:8e46734fefbd43ceb7f019f110618a1ae990960b315cb6920991248371c569fc` |
| 4 | `theorem` | [hasDerivAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivat-iff-tendsto-slope--b183f727c696e7398d98b26a.md) | 69 | `result-track:b183f727c696e7398d98b26af8dc516ece5315157f24d166d1c082adf5dc9328` |
| 5 | `theorem` | [hasDerivAt_iff_tendsto_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivat-iff-tendsto-slope-zero--f5159068a4c43af2e1f7a82b.md) | 72 | `result-track:f5159068a4c43af2e1f7a82bd0aef08f392d7083b6ab7082894e933c15983345` |
| 6 | `theorem` | [HasDerivAt.tendsto_slope_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivat-tendsto-slope-zero-right--9658dd0b101ddc1ba825eb7b.md) | 80 | `result-track:9658dd0b101ddc1ba825eb7b2d594ce7854fdebd31e9137b59d58d2dcc81b00a` |
| 7 | `theorem` | [HasDerivAt.tendsto_slope_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivat-tendsto-slope-zero-left--12d2e54994b3afc9e9366338.md) | 84 | `result-track:12d2e54994b3afc9e9366338c8c29fe3d6f3202df632d2f62587d7cf15a805c1` |
| 8 | `theorem` | [range_derivWithin_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/range-derivwithin-subset-closure-span-image--c48185a5402539f807a49c30.md) | 90 | `result-track:c48185a5402539f807a49c30332f73a5a9e68b38d12e814c0107f5c80e4e4401` |
| 9 | `theorem` | [range_deriv_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/range-deriv-subset-closure-span-image--7e543cf6b16852b4b7054704.md) | 124 | `result-track:7e543cf6b16852b4b70547042de1e32f3fbee9023649eb5b0d83d36605debd0c` |
| 10 | `theorem` | [isSeparable_range_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/isseparable-range-derivwithin--f1b4e51439b1e6ccf5308ae4.md) | 131 | `result-track:f1b4e51439b1e6ccf5308ae4300e5a30149809b0907e2143ba20d7f86c8d4c24` |
| 11 | `theorem` | [isSeparable_range_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/isseparable-range-deriv--a84f0c6d45b930715792583e.md) | 139 | `result-track:a84f0c6d45b930715792583ecc5483b7d0af55f85d98b5b7342d241871623568` |
| 12 | `lemma` | [HasDerivAt.continuousAt_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivat-continuousat-div--34aea7fc3f1f09e37a6e04a3.md) | 144 | `result-track:34aea7fc3f1f09e37a6e04a311fb3c62c16a9838712b72fd366cd2c79d56138c` |
| 13 | `theorem` | [HasDerivWithinAt.limsup_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-limsup-slope-le--6f3d4d42d2b530b4758bedb8.md) | 157 | `result-track:6f3d4d42d2b530b4758bedb885b3926b2d3d6c5f405051579c6a2ef58f61c334` |
| 14 | `theorem` | [HasDerivWithinAt.limsup_slope_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-limsup-slope-le--2da375a41e7bcd6e88e3a830.md) | 161 | `result-track:2da375a41e7bcd6e88e3a830cb3e79cfa3da8d0ca4ecacb208c73e9a56307aee` |
| 15 | `theorem` | [HasDerivWithinAt.liminf_right_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-liminf-right-slope-le--12b936883f6d5ef58242b00b.md) | 165 | `result-track:12b936883f6d5ef58242b00b425a08deca9a279e6f5b97b7edb419b159212168` |
| 16 | `theorem` | [HasDerivWithinAt.limsup_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-limsup-norm-slope-le--e051b1c9c932ddb00306920a.md) | 182 | `result-track:e051b1c9c932ddb00306920ad75f0593cc1d06f30fd9441285c4a2c6660ec73b` |
| 17 | `theorem` | [HasDerivWithinAt.limsup_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-limsup-slope-norm-le--e9b4dc3ed7fb648caafa0c71.md) | 202 | `result-track:e9b4dc3ed7fb648caafa0c71921fb74c9884f871705cff0b0f6030ada6d2b371` |
| 18 | `theorem` | [HasDerivWithinAt.liminf_right_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-liminf-right-norm-slope-le--944bc484ec9d916f51ff2205.md) | 214 | `result-track:944bc484ec9d916f51ff22057960a8b937b8c8a8446612fa65dd981d2b0e2384` |
| 19 | `theorem` | [HasDerivWithinAt.liminf_right_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant02b140f8422eba90520f2ae7cfc3867f1f09beafd9ddfa24449928f44243f910.lean/declarations/hasderivwithinat-liminf-right-slope-norm-le--3eed68a128db91130c74b4ca.md) | 229 | `result-track:3eed68a128db91130c74b4ca19547de22df366d47f1ef24af15db35b09be2720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
