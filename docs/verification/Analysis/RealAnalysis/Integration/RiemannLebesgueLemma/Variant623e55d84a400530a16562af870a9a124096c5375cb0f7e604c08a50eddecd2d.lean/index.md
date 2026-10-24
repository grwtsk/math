# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RiemannLebesgueLemma.Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean.json)

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
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/macro-rules--5b7be002651bc51d788d9e2c.md) | 47 | `declaration-track:5b7be002651bc51d788d9e2cc1bffe75b4879e4d5a5c5b6c791698ed842a66bd` |
| 2 | `theorem` | [fourier_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/fourier-integrand-integrable--bc07a463a9f9f77c5754eff6.md) | 65 | `result-track:bc07a463a9f9f77c5754eff66d27a9bd927042f6efe5d4a04b476e89818b1b98` |
| 3 | `theorem` | [fourier_integral_half_period_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/fourier-integral-half-period-translate--13904731a5c1ca62f93693be.md) | 80 | `result-track:13904731a5c1ca62f93693be0d8c38de448b298e72922433395548455fee264f` |
| 4 | `theorem` | [fourier_integral_eq_half_sub_half_period_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/fourier-integral-eq-half-sub-half-period-translate--b0cf3ea2f2a485afc5fe0dad.md) | 107 | `result-track:b0cf3ea2f2a485afc5fe0dad2773fda6c3f8ffa1e1d5d517026911961476a460` |
| 5 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/tendsto-integral-exp-inner-smul-cocompact-of-continuous-compact-support--9b60c9f7458fb1fce4b1d30d.md) | 122 | `result-track:9b60c9f7458fb1fce4b1d30dae977f164e8787bb0d5ac85c386d3c8f6cfeb99d` |
| 6 | `theorem` | [tendsto_integral_exp_inner_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/tendsto-integral-exp-inner-smul-cocompact--214c84039ddda0150803dd31.md) | 219 | `result-track:214c84039ddda0150803dd3191382a3d07c1c48f6b8731186c5ab0f92a5ed6f8` |
| 7 | `theorem` | [Real.tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/real-tendsto-integral-exp-smul-cocompact--ebf4b2171a6e980f6d7c957e.md) | 251 | `result-track:ebf4b2171a6e980f6d7c957e3f94359680abdbd60f4736d3352f468bae938b53` |
| 8 | `theorem` | [Real.zero_at_infty_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/real-zero-at-infty-fourierintegral--6bfeb7fb4ea1c41a6f1ff08d.md) | 257 | `result-track:6bfeb7fb4ea1c41a6f1ff08d7d59720ef349970f4b3a82c58d14e2e36afc13f7` |
| 9 | `theorem` | [tendsto_integral_exp_smul_cocompact_of_inner_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/tendsto-integral-exp-smul-cocompact-of-inner-product--9d1d6822dd17c76206c8a83b.md) | 264 | `result-track:9d1d6822dd17c76206c8a83b7986189abd8713f66adfc64e1d72e42620d5e1ec` |
| 10 | `theorem` | [tendsto_integral_exp_smul_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/tendsto-integral-exp-smul-cocompact--b44f3ac287634146a5abee3b.md) | 293 | `result-track:b44f3ac287634146a5abee3bf4280e4620c7da46638bf1912d619b1a8abc9f80` |
| 11 | `theorem` | [Real.zero_at_infty_vector_fourierIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/declarations/real-zero-at-infty-vector-fourierintegral--066bf0b42d6a68908b92b20c.md) | 350 | `result-track:066bf0b42d6a68908b92b20c53639ff6316d5d8173f396b267e0dd49a64e83ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
