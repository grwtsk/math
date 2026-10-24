# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralCompProd.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "845cde5da7be1b51128dce9d04ced95a10817718",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `845cde5da7be1b51128dce9d04ced95a10817718`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFiniteIntegral_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/hasfiniteintegral-prod-mk-left--f422f3ad91d76514f913b3c4.md) | 48 | `result-track:f422f3ad91d76514f913b3c4b9911f657c56ce800d9d0514fffbc29188365979` |
| 2 | `theorem` | [integrable_kernel_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/integrable-kernel-prod-mk-left--86c3cc9f5424c9c12b6b543f.md) | 64 | `result-track:86c3cc9f5424c9c12b6b543f516b48c33bdc7a47ad66e2bb6f1a547a653657e1` |
| 3 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_kernel_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/root-measuretheory-aestronglymeasurable-integral-kernel-compprod--73f84030e62feb0e47d0ec30.md) | 71 | `result-track:73f84030e62feb0e47d0ec30fdf20c011c11cee5fd89e15e4aef9caa0b07d3a4` |
| 4 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.compProd_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/root-measuretheory-aestronglymeasurable-compprod-mk-left--b9fc2f5f487469daccd8b963.md) | 78 | `result-track:b9fc2f5f487469daccd8b9636abd9ae9db2924a72822ce158fcf6b5b258b6625` |
| 5 | `theorem` | [hasFiniteIntegral_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/hasfiniteintegral-compprod-iff--b4abdca761274d7de2e1d410.md) | 88 | `result-track:b4abdca761274d7de2e1d41038ba7f0c9a9af35b3310a46c49ce2fb1fcaf1d58` |
| 6 | `theorem` | [hasFiniteIntegral_compProd_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/hasfiniteintegral-compprod-iff--5b831c61584e663aa05cad1a.md) | 107 | `result-track:5b831c61584e663aa05cad1adb3c959131b70d9da941b57a17ea1a6bf8d1d3d2` |
| 7 | `theorem` | [integrable_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/integrable-compprod-iff--c8feb4aaeb871ebf07a4e44f.md) | 124 | `result-track:c8feb4aaeb871ebf07a4e44fadf0259c82c7834a40792db0d77be23c94bc5500` |
| 8 | `theorem` | [_root_.MeasureTheory.Integrable.compProd_mk_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/root-measuretheory-integrable-compprod-mk-left-ae--107e97d0dc95c47808617a63.md) | 132 | `result-track:107e97d0dc95c47808617a631793037f3b6be5757bfc174f8112d5e261889541` |
| 9 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/root-measuretheory-integrable-integral-norm-compprod--2e8a2a83070c29212e462c1e.md) | 137 | `result-track:2e8a2a83070c29212e462c1e310d7aab3a401589612a0442ee0d8df6b2831e71` |
| 10 | `theorem` | [_root_.MeasureTheory.Integrable.integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/root-measuretheory-integrable-integral-compprod--4bbb72a4af3b95292b29199e.md) | 142 | `result-track:4bbb72a4af3b95292b29199e5dc62676cd77bdd9f0a9a048c70c8166d4b65c66` |
| 11 | `theorem` | [kernel.integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-fn-integral-add--09a18617fa62f10697cbb7dc.md) | 159 | `result-track:09a18617fa62f10697cbb7dc959198dba9b94b4487750eea65aaed7f0432b883` |
| 12 | `theorem` | [kernel.integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-fn-integral-sub--a15146b40c5fc476b452d9d5.md) | 168 | `result-track:a15146b40c5fc476b452d9d5e40549a4a9f841584d2c3a36d6a259c1241ca811` |
| 13 | `theorem` | [kernel.lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-lintegral-fn-integral-sub--6751ace773cf0b4b25cbd4f7.md) | 177 | `result-track:6751ace773cf0b4b25cbd4f7930fd8382dfe9d2992f3fa8e3e2aa7d1339707c6` |
| 14 | `theorem` | [kernel.integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-integral-add--43ac21cc63ecc092a3b40e68.md) | 186 | `result-track:43ac21cc63ecc092a3b40e68bce558dbaa2296f9b516c9f2c6f56ad86916aa51` |
| 15 | `theorem` | [kernel.integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-integral-add--ab182d764731a2e0f0837f0a.md) | 194 | `result-track:ab182d764731a2e0f0837f0a0826061a8311f3744eecf94a822efe83b6ba2f95` |
| 16 | `theorem` | [kernel.integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-integral-sub--159439b9c6f69f609a72c7df.md) | 201 | `result-track:159439b9c6f69f609a72c7dff99d4ba394120a015d34cd290928c95efd2b48d7` |
| 17 | `theorem` | [kernel.integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-integral-integral-sub--ae08987d6436bd061f805bee.md) | 209 | `result-track:ae08987d6436bd061f805bee5c1e1ba59ec8522e19e9435933bd02fe35289849` |
| 18 | `theorem` | [kernel.continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/kernel-continuous-integral-integral--4e02c94c0f9248df403e622f.md) | 217 | `result-track:4e02c94c0f9248df403e622ff15da7e1fc71c64b5e51d35f8e68672b929dbba4` |
| 19 | `theorem` | [integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/integral-compprod--bfb155b9ffbfed43ca6fc359.md) | 245 | `result-track:bfb155b9ffbfed43ca6fc3590374176ceced945dc7182fac5b1dadcabfcba256` |
| 20 | `theorem` | [set_integral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/set-integral-compprod--4c400017af616073fa3c728a.md) | 271 | `result-track:4c400017af616073fa3c728ae6de309d32e8d254f501014bf09dcd088767d3b8` |
| 21 | `theorem` | [set_integral_compProd_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/set-integral-compprod-univ-right--cbc383969e312837bd877775.md) | 280 | `result-track:cbc383969e312837bd87777558e9cfe1121baa24da0c41907ff82159cc696c93` |
| 22 | `theorem` | [set_integral_compProd_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/declarations/set-integral-compprod-univ-left--dd9a2f9921f2ed86879b4b28.md) | 286 | `result-track:dd9a2f9921f2ed86879b4b2856aed4d7e8cb2d235e6dbe1ae56eae97ad116b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
