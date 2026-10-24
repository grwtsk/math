# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative09.Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4dc5e9f4373a233442f95e7dce6c8d55c0532db",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4dc5e9f4373a233442f95e7dce6c8d55c0532db`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realrampantiderivative--975bc9cf3775db2f394abcbc.md) | 29 | `declaration-track:975bc9cf3775db2f394abcbcd687f5988cead2645d176fb2fecbd0352eb7f495` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realrampantiderivative-hasderivat--d353173d6ddfa50fc4e2659b.md) | 32 | `result-track:d353173d6ddfa50fc4e2659b432b13f6f79cf66e77fdb88c80da8c95357afccd` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realrampantiderivative-tendsto--2a70d535b0f9bdd9dfa8be8a.md) | 42 | `result-track:2a70d535b0f9bdd9dfa8be8a0cdda025e6684863bd41029a397737c83cc4ddeb` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realramp-tail-integrable--38f70eda65b8b5f5b3945573.md) | 56 | `result-track:38f70eda65b8b5f5b3945573cb434de4fc489ec129530accbc0d44afea2dfbf0` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realramp-tail-integral--03efc117de169f8a57e7ecce.md) | 64 | `result-track:03efc117de169f8a57e7eccee6a95c6d30b1d100c4f9cf43e28453eeae24d192` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/zeroon-lower-integrable--76e88da4c782f62aef1a0b96.md) | 71 | `result-track:76e88da4c782f62aef1a0b960dbc6784681c8e1c9dae09cdbfb8b79bf7bced7b` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realramp-integrable--b37981f0d5c36fadde466ad2.md) | 77 | `result-track:b37981f0d5c36fadde466ad21c9c1cd452e63ebdb30e7e97c5b6d6d44490455a` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/realramp-integral--ddaaebadcdb30280f32dd301.md) | 87 | `result-track:ddaaebadcdb30280f32dd3010fc52eb0388c089a3ba56ff049c722001b0a9477` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/complexramp-norm--5a1bc81bf7a942f6645fba48.md) | 105 | `result-track:5a1bc81bf7a942f6645fba48e461272fe24e8611330a10112ccfacfd8f0a66ad` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualsinglerieszramp-integrable--03218231332691be9a1e69c0.md) | 114 | `result-track:03218231332691be9a1e69c0a816bc61212e8149a1a32a5deb4f4419514c6b0d` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualsinglerieszramp-integral-norm--c82cd6cb01f8b4de4ac6bd2c.md) | 124 | `result-track:c82cd6cb01f8b4de4ac6bd2c3c1b556e8ecdadc50031560af5513912038b075a` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/complexrampantiderivative--fbc5b25bea8a3f53e7325fc4.md) | 130 | `declaration-track:fbc5b25bea8a3f53e7325fc4ee7107b7651575a9474a3f86e6cf67cd7541360c` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/complexrampantiderivative-hasderivat--59469d2e86afff45be6a166f.md) | 133 | `result-track:59469d2e86afff45be6a166f0cfbee424f90be14274451f024d4176bdee2d0e5` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/complex-exp-monomial-zero--c20fcdc3ac11a74658811dad.md) | 149 | `result-track:c20fcdc3ac11a74658811dad621afd6d639365e7be22f1652fd5ac97c1ed6663` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/complexrampantiderivative-tendsto--9a25f7a3c054867011fd10d7.md) | 163 | `result-track:9a25f7a3c054867011fd10d75b353e4739668a2eecf339e03d1d166fa7e00807` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualsinglerieszramp-integral--21b6acd8d0e3536613df6f55.md) | 177 | `result-track:21b6acd8d0e3536613df6f55c260dcf154b3a1b39ea48b610eb8b367b670825b` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatom--50efb7b9c9c2c9cf1e4a60fa.md) | 210 | `declaration-track:50efb7b9c9c2c9cf1e4a60fa57db8618ea0c2c101327ff4d49e8c1dad53c6896` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualmangoldtrieszlaplace--5073f62a1a156f2b87f021d2.md) | 215 | `declaration-track:5073f62a1a156f2b87f021d2f24f7c8df4962513a7f5663eeb7c840ab381f467` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/atom-factor--dc19e12f9a5b16936365f6d6.md) | 219 | `result-track:dc19e12f9a5b16936365f6d60807abb1d2b595dc7a8569acebce74d3f5bedd04` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatom-integrable--8d9ac17c68ad6889eb974520.md) | 228 | `result-track:8d9ac17c68ad6889eb974520efb8567a5859a3deb193fc1349ae7059c28c37ee` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatom-integral-norm--83c17880b3e924f84961bd63.md) | 247 | `result-track:83c17880b3e924f84961bd638da3a2b3807976669e8846886bc5310914ced4bb` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--1cbf1fc240e2759c71b8b200.md) | 282 | `result-track:1cbf1fc240e2759c71b8b200be9c3a8b4b39426f5ad7c42c046c261f39656b1a` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatoms-tsum--61fa0af3114a167e283a6225.md) | 293 | `result-track:61fa0af3114a167e283a6225a778adc61c5907aa47e50ee236f6e1f638c2ecbd` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszprimitive-continuous--c4b03417a96ce07564aa5f0d.md) | 318 | `result-track:c4b03417a96ce07564aa5f0d7d19c74dd49891cb1ceacf11cecd10b5806dde58` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--664401ce6e21d9843ca22157.md) | 337 | `result-track:664401ce6e21d9843ca2215797e4d859ea0086f830449be6ceafcfe83e8141f4` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatoms-integral-tsum--1da2219d3e5c417c19e540ec.md) | 367 | `result-track:1da2219d3e5c417c19e540ecd51c7f8c46ecf4fa413445c4a13ae4200309c12c` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszlaplaceatom-integral--47eb0cb60c569cce0d587991.md) | 375 | `result-track:47eb0cb60c569cce0d587991fbbdc949c95476b09f17c7ea9fc3bd78c938322d` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/continuousramp-weight-eq--09c67d43ba8dcafeb7ceff42.md) | 400 | `result-track:09c67d43ba8dcafeb7ceff428d95a9b3b2792da457fbc14a2076f816d4ad9e6a` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszcontinuousramp-laplace-integrable--54bc3dee1ce38f6d0b086190.md) | 412 | `result-track:54bc3dee1ce38f6d0b086190ba512c8d31102fd0cad4cb486208a99ea977c34b` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualrieszcontinuousramp-laplace-integral--cee30f9936f9e4f696ed732d.md) | 429 | `result-track:cee30f9936f9e4f696ed732d8866be81b9a3c1bdce64ed9262250771f6de6315` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualh-weight-eq-sum-sub--6305eaceab40467471d7fe74.md) | 473 | `result-track:6305eaceab40467471d7fe74de39174f302b24f399e9e8dac551572860437211` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualmangoldtrieszlaplace-integrable--a4f6e7133c6d1411c370bb0b.md) | 482 | `result-track:a4f6e7133c6d1411c370bb0b99864f78f938d66b1379ce896debf430eff3b25a` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--a942aee54964cab87fee8704.md) | 490 | `result-track:a942aee54964cab87fee87046e0f08273f6a0dd70d3ff2582f69833324646603` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--bf0ac27b176de8009dea573c.md) | 505 | `result-track:bf0ac27b176de8009dea573c041ee36c5188b88ed79515572b2f36c37828bc6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
