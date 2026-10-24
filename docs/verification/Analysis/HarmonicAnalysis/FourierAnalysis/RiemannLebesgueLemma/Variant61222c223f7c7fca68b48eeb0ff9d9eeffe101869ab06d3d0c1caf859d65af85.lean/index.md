# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RiemannLebesgueLemma.Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71bd0b6c01afeb0916886b038c50b28760befe52",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71bd0b6c01afeb0916886b038c50b28760befe52`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierIntegral_half_period_translate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/fourierintegral-half-period-translate--12d4eacd1464e9d1b81673ad.md) | 62 | `result-track:12d4eacd1464e9d1b81673ad9695159a900c1254ef1b42fe20b92cb7330135a6` |
| 2 | `theorem` | [fourierIntegral_eq_half_sub_half_period_translate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/fourierintegral-eq-half-sub-half-period-translate--efe891f38319618397387404.md) | 89 | `result-track:efe891f383196183973874048f1d07c6117021332d49ce289fbe5fb90f7d1297` |
| 3 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/tendsto-integral-exp-inner-smul-cocompact-of-continuous-compact-support--a96079ebd0a0b90636b57c2d.md) | 103 | `result-track:a96079ebd0a0b90636b57c2d4a278e00758f75077ae9426fed6101019f361254` |
| 4 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/tendsto-integral-exp-inner-smul-cocompact--3140f91b40f56bbf65386022.md) | 185 | `result-track:3140f91b40f56bbf65386022ea046de22019c67cecc97682d7ed2feffe64001f` |
| 5 | `theorem` | [Real.tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/real-tendsto-integral-exp-smul-cocompact--95ce02bb5091750349ae4734.md) | 213 | `result-track:95ce02bb5091750349ae47345d4d5ec1bf66ee0665da65009eee4c2ed61097d3` |
| 6 | `theorem` | [Real.zero_at_infty_fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/real-zero-at-infty-fourierintegral--6bf7e809fa5715d3a1e7bc66.md) | 219 | `result-track:6bf7e809fa5715d3a1e7bc66c3d4d08c16c56451003d50a73c3dcc3fe32879dc` |
| 7 | `theorem` | [tendsto_integral_exp_smul_cocompact_of_inner_product](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/tendsto-integral-exp-smul-cocompact-of-inner-product--95b5791dcb905ea2d0e39958.md) | 225 | `result-track:95b5791dcb905ea2d0e3995827815c9abc1f49d9adf12a37de8b5e7e2e196beb` |
| 8 | `theorem` | [tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/tendsto-integral-exp-smul-cocompact--7fb564ac986883d746749f05.md) | 249 | `result-track:7fb564ac986883d746749f0528c2a1bc394ec18d49ca8a89a4f9573badb1961f` |
| 9 | `theorem` | [Real.zero_at_infty_vector_fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant61222c223f7c7fca68b48eeb0ff9d9eeffe101869ab06d3d0c1caf859d65af85.lean/declarations/real-zero-at-infty-vector-fourierintegral--74afa63aa66dab4f123401de.md) | 275 | `result-track:74afa63aa66dab4f123401de352d434378bab85d743b1b95401395a76f655931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
