# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt04.Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "570c200c7fdcbb9fe708184d1d9cb1d953350e20",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `570c200c7fdcbb9fe708184d1d9cb1d953350e20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualChebyshevAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/psierrortail--a97b036a0b19d7ad3a920f2a.md) | 22 | `declaration-track:a97b036a0b19d7ad3a920f2a1f75d664d5cdab76e3a48221c1ac1f815a520505` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel--b0210d1a656a7152fe4cd68e.md) | 24 | `declaration-track:b0210d1a656a7152fe4cd68e7f197cfec41a019071c3a30c5111866c3ecac9a0` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-measurable--e840bf3683f8bb813e46c208.md) | 27 | `result-track:e840bf3683f8bb813e46c208403907af730deda3e41f92f82bafb6bc00c76dd6` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-slice--1fcb90307aec9d80c2fd6160.md) | 32 | `result-track:1fcb90307aec9d80c2fd61600c72e1f8622cc6fcf1be9669042df014aa0e728f` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-slice-integrable--28760c93b55e3ec270c3e590.md) | 38 | `result-track:28760c93b55e3ec270c3e590284896e09087978dbdefc13c7e3bcd82030cfb68` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-slice-norm-integral--6558fe3f399c91a620ff7024.md) | 44 | `result-track:6558fe3f399c91a620ff7024eaa024d2c302359748ed6df512c5583860f64534` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-integrable--7eded1af0bc660b340541cbc.md) | 53 | `result-track:7eded1af0bc660b340541cbcbac4c7678a0a2582820f9bae5fce90b61231ae93` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/trianglekernel-inner-eq--1cf1b5b46fc53948bf53875e.md) | 63 | `result-track:1cf1b5b46fc53948bf53875e1604791bf6494edf894ae4adb156cc5b1173bee8` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variant86d79d5fefc031eab7b30f708fdf242a65309f615cbff838dbe9392e5cfb4b13.lean/declarations/psierrortail-integrable--b5543367fc2ce00ee7992d74.md) | 76 | `result-track:b5543367fc2ce00ee7992d748feb199f260c614e8884f3f57b7e4c0e14dbc38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
