# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RiemannLebesgueLemma.Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b08cf67db1e868dfb21b16d72cb59d757db8b29e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b08cf67db1e868dfb21b16d72cb59d757db8b29e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierIntegral_half_period_translate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/fourierintegral-half-period-translate--74fc4f7560c440a26c503461.md) | 70 | `result-track:74fc4f7560c440a26c50346195fa1d6aa522acae1268ab936dadd927a0ff69c7` |
| 2 | `theorem` | [fourierIntegral_eq_half_sub_half_period_translate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/fourierintegral-eq-half-sub-half-period-translate--9bb09d5f4d9c3c7d76655437.md) | 97 | `result-track:9bb09d5f4d9c3c7d7665543799688e3defe74ec0a941fdd1d7c437a4f4f345fe` |
| 3 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/tendsto-integral-exp-inner-smul-cocompact-of-continuous-compact-support--07ec586565bc212d87609fbb.md) | 111 | `result-track:07ec586565bc212d87609fbbcefee110ca91ddde2924972c966c2b24363a06d6` |
| 4 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/tendsto-integral-exp-inner-smul-cocompact--4144ee3d9071536dbf1f8fb5.md) | 193 | `result-track:4144ee3d9071536dbf1f8fb549b83679d1edf16ad90bbabd835370426773b081` |
| 5 | `theorem` | [Real.tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/real-tendsto-integral-exp-smul-cocompact--a707475facc5cda90af6430e.md) | 221 | `result-track:a707475facc5cda90af6430e0749e2f3e058e0a939f5d6880a456cf1ee1dd91f` |
| 6 | `theorem` | [Real.zero_at_infty_fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/real-zero-at-infty-fourierintegral--beba354fd1aa5d428421e57e.md) | 227 | `result-track:beba354fd1aa5d428421e57ef68b468ffc9711e6a73e7b9766da975040c7ef9d` |
| 7 | `theorem` | [tendsto_integral_exp_smul_cocompact_of_inner_product](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/tendsto-integral-exp-smul-cocompact-of-inner-product--35ad31ff2721996dcee0c072.md) | 233 | `result-track:35ad31ff2721996dcee0c07251f7c5eb2d23d158ca6007d40efa09d142bafbdf` |
| 8 | `theorem` | [tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/tendsto-integral-exp-smul-cocompact--90ae06b3789af95d7afdc448.md) | 257 | `result-track:90ae06b3789af95d7afdc448d5754cf12c28691c776f283496b03127cdab2169` |
| 9 | `theorem` | [Real.zero_at_infty_vector_fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/RiemannLebesgueLemma/Variant341797c56758b0c7ca7d797d1b42bce99926c24d0c00933376ecefadffab0aea.lean/declarations/real-zero-at-infty-vector-fourierintegral--496694e5d86b308397a08a00.md) | 283 | `result-track:496694e5d86b308397a08a00bddc0340c9057525882147550b4c4af67d163e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
