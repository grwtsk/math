# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rademacher.Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "116913002765cb3f00d3ca2afb0c6662874a6913",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `116913002765cb3f00d3ca2afb0c6662874a6913`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Measurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoundedVariation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Disintegration` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [memLp_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/memlp-linederiv--34e7b905d60b496af12328b1.md) | 64 | `result-track:34e7b905d60b496af12328b19fc18ae6edaa25f058237fea8eed4b7852d1011d` |
| 2 | `theorem` | [ae_lineDifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-linedifferentiableat--97d87307cc2fad809fe6a03d.md) | 74 | `result-track:97d87307cc2fad809fe6a03da99dc80e80ad1aaca4cc32a933e4071739e65248` |
| 3 | `theorem` | [locallyIntegrable_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/locallyintegrable-linederiv--5248c53f70907a4b9ef4cd39.md) | 91 | `result-track:5248c53f70907a4b9ef4cd39eaed9cc49bdf7e577fb3d994dfc6d54d498aeae2` |
| 4 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--e673c0cb9e105e181b81e696.md) | 104 | `result-track:e673c0cb9e105e181b81e696be3c5100a1258a0d12185256503834cd50f0ce07` |
| 5 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--9d8615264e355c16d337c34e.md) | 126 | `result-track:9d8615264e355c16d337c34eba40dccc2a42d3b1fe80abbab7f1ea859c3627b9` |
| 6 | `theorem` | [integral_lineDeriv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/integral-linederiv-mul-eq--5a7c5d3120fb7eed22733ddd.md) | 171 | `result-track:5a7c5d3120fb7eed22733dddc56cf41b40880f138c8e2955ffe65d512d7568d7` |
| 7 | `theorem` | [ae_lineDeriv_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-linederiv-sum-eq--82601f06e616467319877124.md) | 206 | `result-track:82601f06e61646731987712436a55691764be19ddf45552816cf34d523e1b5d3` |
| 8 | `theorem` | [ae_exists_fderiv_of_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-exists-fderiv-of-countable--359e57b5709c5edd402c3d23.md) | 247 | `result-track:359e57b5709c5edd402c3d23c7fee223de832a679625148677e6c40a0b1a6e61` |
| 9 | `theorem` | [hasFDerivAt_of_hasLineDerivAt_of_closure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/hasfderivat-of-haslinederivat-of-closure--46d6df397ec1a48e9b8b6164.md) | 266 | `result-track:46d6df397ec1a48e9b8b6164963fb68e8b56c5501aa5b7b5f97ccf61f1749384` |
| 10 | `theorem` | [ae_differentiableAt_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiableat-of-real--82675b2afc298c0d4e3e3a0e.md) | 325 | `result-track:82675b2afc298c0d4e3e3a0e628e33f76bd363b2d5e3365803aa00621bcc161a` |
| 11 | `theorem` | [ae_differentiableWithinAt_of_mem_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiablewithinat-of-mem-of-real--bd2cc40413ccbd6de9f272d7.md) | 344 | `result-track:bd2cc40413ccbd6de9f272d79c5a854b543b9543f50b0e66716200c53c237dc3` |
| 12 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiablewithinat-of-mem-pi--120ce02671ec30b42cbfc8e1.md) | 354 | `result-track:120ce02671ec30b42cbfc8e14e83ada66560f0ceec849a4a250697009f1db354` |
| 13 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiablewithinat-of-mem--553f4ea0ef1500863ce6a207.md) | 366 | `result-track:553f4ea0ef1500863ce6a207ca38d76a35941a6b9985e634f6389b4c2a14e575` |
| 14 | `theorem` | [ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiablewithinat--7ebea644536c4df2792eb8e1.md) | 380 | `result-track:7ebea644536c4df2792eb8e1bb72c25f374d6aef2ba0c3b3b54ef9b0c59deb5f` |
| 15 | `theorem` | [LipschitzWith.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/lipschitzwith-ae-differentiableat--5f763c2eeda685be9ee828d1.md) | 390 | `result-track:5f763c2eeda685be9ee828d1aaa41f4327032b46bcdfc67784eeec2851d06333` |
| 16 | `theorem` | [ae_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/ae-differentiableat-norm--d57bf0e255c41f0389b186c2.md) | 397 | `result-track:d57bf0e255c41f0389b186c23b1cee70d73ab5e0e3d665e3800417a5a12bb287` |
| 17 | `theorem` | [dense_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/declarations/dense-differentiableat-norm--bf82cdcfc010ba0ee94100e4.md) | 403 | `result-track:bf82cdcfc010ba0ee94100e46d49b2af09d56baafe3109e98bd3362cce018cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
