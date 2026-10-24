# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sinc.Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78e8fd84f810480297e8cf6dde76757f78c946e3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78e8fd84f810480297e8cf6dde76757f78c946e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sin_sub_self_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/abs-sin-sub-self-le--288079a247fcdadb4877369c.md) | 60 | `result-track:288079a247fcdadb4877369c616db98b6d9dc53e9a14aa3ef6aaf7cfa87595da` |
| 2 | `theorem` | [hasDerivAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/hasderivat-sinc-zero--2079b81b25dc9d84e2806c2b.md) | 97 | `result-track:2079b81b25dc9d84e2806c2b8aeb40f6538d87e9d4359b2fd087062bee97cf68` |
| 3 | `theorem` | [differentiableAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/differentiableat-sinc-zero--ba6c516e0eb2e8f2b579738a.md) | 133 | `result-track:ba6c516e0eb2e8f2b579738ad4365ae0a82c41897997a6b5e4c7fe9854cec5ef` |
| 4 | `theorem` | [differentiableAt_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/differentiableat-sinc--2c08fe4f517bc17940f929d9.md) | 137 | `result-track:2c08fe4f517bc17940f929d97ea5f555dd9e2de63cd8bb39ab58ea41efef0915` |
| 5 | `theorem` | [differentiable_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/differentiable-sinc--108bf8e4dcd0c96249eda0d9.md) | 144 | `result-track:108bf8e4dcd0c96249eda0d9565aa35b8e34209f4bf5feb59d0abb13f6ac7422` |
| 6 | `theorem` | [sinc_eq_integral_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/sinc-eq-integral-cos--0c97ca931369904b2be728d8.md) | 149 | `result-track:0c97ca931369904b2be728d8e606522e852bfafdc2060acac6c826bc4e8d901b` |
| 7 | `theorem` | [hasDerivAt_sinc_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/hasderivat-sinc-of-ne-zero--e46b4ee93a97cafe6ac79ae9.md) | 162 | `result-track:e46b4ee93a97cafe6ac79ae98557c63a1ed0528a7c9900c1b006b8cb121afa17` |
| 8 | `theorem` | [deriv_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/deriv-sinc--9d2be4b7654ee1919d1c3cfb.md) | 178 | `result-track:9d2be4b7654ee1919d1c3cfb71ad085b600e253ae6553d86fdd456eb97da1a84` |
| 9 | `theorem` | [deriv_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/deriv-sinc-zero--f3b6d9019ac7214955c26387.md) | 184 | `result-track:f3b6d9019ac7214955c26387af16ec6411a6b2c11493faf787453bddddb03e9c` |
| 10 | `theorem` | [abs_x_mul_cos_sub_sin_le_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/abs-x-mul-cos-sub-sin-le-sq--fe25f865c7ebe94756dac581.md) | 201 | `result-track:fe25f865c7ebe94756dac5817ff34829125431ce07e59be471d56cd420d01d0b` |
| 11 | `theorem` | [abs_deriv_sinc_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/abs-deriv-sinc-le-one--9535373c18217f302601af98.md) | 282 | `result-track:9535373c18217f302601af986624d51b3e98538bbdec2c35bec13905b6e1a489` |
| 12 | `theorem` | [deriv_sinc_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/deriv-sinc-mem-icc--4e637a5f4c51a57eaedc0710.md) | 293 | `result-track:4e637a5f4c51a57eaedc07103fc7d0a3b5d363382f8c70728f238e5118adf310` |
| 13 | `theorem` | [sinc_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/sinc-eq-integral--d55ccc26c01563105b30878b.md) | 315 | `result-track:d55ccc26c01563105b30878b5d691ee8cfb119497f9a611e507326f7f20bdb37` |
| 14 | `theorem` | [deriv_sinc_eq_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/deriv-sinc-eq-dslope--af5438a2e7cda25922e553d0.md) | 349 | `result-track:af5438a2e7cda25922e553d0928058c9362fc9be95488ab3b440f8919959ec74` |
| 15 | `theorem` | [contDiffAt_sinc_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/contdiffat-sinc-of-ne-zero--b4fb028b87c43180de526679.md) | 364 | `result-track:b4fb028b87c43180de5266795737e9f785ead0c31e2a86a1098fac1b776c3d39` |
| 16 | `theorem` | [analyticAt_sinc_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/analyticat-sinc-zero--a15d3e9ccbacf67e23e1dc0b.md) | 376 | `result-track:a15d3e9ccbacf67e23e1dc0bf31f50d746254c98f312a9145d7816cf80a788c3` |
| 17 | `theorem` | [analyticAt_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/analyticat-sinc--19147c7b3cd3256a1adfac05.md) | 419 | `result-track:19147c7b3cd3256a1adfac05f7983127cc0d85ab383389e614610fd846252903` |
| 18 | `theorem` | [contDiff_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/contdiff-sinc--cd38a98eb81696a8363b23ce.md) | 428 | `result-track:cd38a98eb81696a8363b23ce34ea2dd0eb86daff8f260737e59516a358779404` |
| 19 | `theorem` | [analyticOnNhd_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/declarations/analyticonnhd-sinc--b6497001eee84f778c25cf0d.md) | 432 | `result-track:b6497001eee84f778c25cf0df235f940b86ee0b46dae9c958f3f034a6b0f263d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
