# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersion.Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c050951e2050bc82cd8e9b67626b5f9015ff6b27",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c050951e2050bc82cd8e9b67626b5f9015ff6b27`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FourPhaseConvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/analyticdispersionreconstruction--1e988cf2dfa423b197adedee.md) | 49 | `declaration-track:1e988cf2dfa423b197adedee5b79bf4dac19fb680446b47d2078330bdb1539d5` |
| 2 | `theorem` | [fderiv_potential_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/fderiv-potential-eq--8170afebe35914e56da8c730.md) | 71 | `result-track:8170afebe35914e56da8c730f441243e107078e93690fdebe546160fa52571a0` |
| 3 | `theorem` | [fderiv_gradient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/fderiv-gradient-eq--14ed19ec713870ffc8666c5e.md) | 76 | `result-track:14ed19ec713870ffc8666c5ec7658bae5fa6c9b932bc7af575d8c04a1e1c3592` |
| 4 | `theorem` | [hessian_apply_eq_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/hessian-apply-eq-dispersion--657c9a6259f54ebb623b92a6.md) | 81 | `result-track:657c9a6259f54ebb623b92a6cccf93cff267d9fc7b554dcf4f959e17e9efd19f` |
| 5 | `theorem` | [hessian_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/hessian-symmetric--0b3fe52ca34de2bc8ce94b02.md) | 88 | `result-track:0b3fe52ca34de2bc8ce94b027084fbe9849388059ab034245705e24dd9cea56c` |
| 6 | `theorem` | [hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/hessian-nonnegative--df4d0228eb120d495d7207b9.md) | 95 | `result-track:df4d0228eb120d495d7207b973d08417282f2d2e8dba7938c461562452cbb84b` |
| 7 | `def` | [geometryAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/geometryat--dbeeeb2ae662e4fd7a16f521.md) | 102 | `declaration-track:dbeeeb2ae662e4fd7a16f5218a4d2d46457b331049f4362d3a1940ca418a5e3d` |
| 8 | `theorem` | [geometryAt_form](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/geometryat-form--f8edbee2d956e58fca19d60d.md) | 106 | `result-track:f8edbee2d956e58fca19d60d30ea056d4fda4236125427bec66160a1d946a078` |
| 9 | `theorem` | [visible_iff_hessian_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/visible-iff-hessian-pos--26b955b93ee5740b59cdb4a7.md) | 113 | `result-track:26b955b93ee5740b59cdb4a73ec1d1bb78d1b4b33ebe73aecce4434a3615b80f` |
| 10 | `theorem` | [isNull_iff_hessian_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/isnull-iff-hessian-eq-zero--dc557ee3ff2643dfd25e6444.md) | 121 | `result-track:dc557ee3ff2643dfd25e6444d6427ac4d628170b1dc335a9eca7cf7c149aecf4` |
| 11 | `theorem` | [analytic_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/analytic-potential--b8e4e0176ef94061dc6190c1.md) | 128 | `result-track:b8e4e0176ef94061dc6190c16e7c54e98481320d60c3cf0a0a0ad589f68ed911` |
| 12 | `theorem` | [analytic_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/analytic-gradient--ec902598b56ba68b02cb84ed.md) | 133 | `result-track:ec902598b56ba68b02cb84ed8987892adb3a5fd4d9ceb9a72f92c0b296ba9271` |
| 13 | `def` | [ofAnalyticDispersionAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/ofanalyticdispersionat--c60ce5144fff6c6cca3c4af7.md) | 149 | `declaration-track:c60ce5144fff6c6cca3c4af7a8aeb0a05eec6ad94442f00c93ad872d97dd4892` |
| 14 | `theorem` | [ofAnalyticDispersionAt_phaseI](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/ofanalyticdispersionat-phasei--22b5750e9577e4ddba7d21e8.md) | 162 | `result-track:22b5750e9577e4ddba7d21e8dd0b12560f19cd38d5e4f0967954ffc3e26cc1ce` |
| 15 | `theorem` | [ofAnalyticDispersionAt_phaseIEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/declarations/ofanalyticdispersionat-phaseienergy--7952d008d7615492bcfa23a5.md) | 174 | `result-track:7952d008d7615492bcfa23a57d10528cb27325681866eb75f8aee9a27d16e91f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
