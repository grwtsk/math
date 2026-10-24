# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt02.Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad841af29ea97d6855ad50790fe73fd2dee5838",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad841af29ea97d6855ad50790fe73fd2dee5838`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean.json)

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
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/psierrortail--2e353522da3c3bf609b38e43.md) | 22 | `declaration-track:2e353522da3c3bf609b38e43a123c4e61e905e3d9f693ee854aab3c272c0ed23` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel--efd9548700389bf4bd64ba85.md) | 24 | `declaration-track:efd9548700389bf4bd64ba854820218dbe442d3c118ed7a8667bd75b9cd45f78` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-measurable--c5614c73dc597081607ee532.md) | 27 | `result-track:c5614c73dc597081607ee53297e498fdb70f6455eb74242efa52183252822a1b` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-slice--351b7b7c3bffa979621e5efc.md) | 32 | `result-track:351b7b7c3bffa979621e5efc4ff3683c3b6d1604d8c5c57910f27c0cec5d5f03` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-slice-integrable--ddb308593875d02ab455fd94.md) | 38 | `result-track:ddb308593875d02ab455fd94c533005ad8211dc554be08dd268a7615029017ae` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-slice-norm-integral--3b11ad0024711ff498226d9a.md) | 46 | `result-track:3b11ad0024711ff498226d9a79460a288c1e4626dc76d53c124a71978ccd3612` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-integrable--314cc22079d6a678d4d5be3d.md) | 53 | `result-track:314cc22079d6a678d4d5be3d36309d6832c24d9cb61090d87e7d56e1f25ea8ab` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/trianglekernel-inner-eq--eadf05a24361dc9630069b48.md) | 63 | `result-track:eadf05a24361dc9630069b48a156523a0076c9e4f7ad1c6c36b644c21bbba2b1` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variantd9e92c0faabb749f9f70047f2b13c67fe521fe06205208ceba0f6f4a0cafada6.lean/declarations/psierrortail-integrable--229df170c11e86be6fe87d31.md) | 76 | `result-track:229df170c11e86be6fe87d31e552daacece4aeec93c5da5a6f4dad0ac8aa3e15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
