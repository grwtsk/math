# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt04.Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c201429e8a745082e2f14e2157d9996ce19ca8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c201429e8a745082e2f14e2157d9996ce19ca8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualChebyshevAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/psierrortail--4f391df56c6c7a7ce2f93618.md) | 14 | `declaration-track:4f391df56c6c7a7ce2f936180121ff230d625a7a9e2dc275eb5c3cb5c94e0721` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel--3e39152f12b88ae606b3f6ec.md) | 16 | `declaration-track:3e39152f12b88ae606b3f6ec4fc6eb231f59ec107bde4e725e428f01193b4b41` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-measurable--d1ab8b0843b8fddf4424faa2.md) | 19 | `result-track:d1ab8b0843b8fddf4424faa2325e0066f3464aca9bcfde7ace550cf5ee592c3d` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-slice--f825d33052fcbf6195cc79fd.md) | 24 | `result-track:f825d33052fcbf6195cc79fde4502575dd841c4955b20975be194783850488ed` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-slice-integrable--9abaa1845ba83ae0288eec8b.md) | 30 | `result-track:9abaa1845ba83ae0288eec8bcac000e224c8c01834f8714e0bd75e55ea9ac0b8` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-slice-norm-integral--c092af5d84a93956058d997f.md) | 36 | `result-track:c092af5d84a93956058d997f1a0c93892b95c95a19abbd22ca113b700607f091` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-integrable--90b9ceedd2d4290841bb6c20.md) | 45 | `result-track:90b9ceedd2d4290841bb6c20a78f33cd893e8f940e1f5a3d9e72b5f3b97bc64d` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/trianglekernel-inner-eq--a1f0860cbf3716a831058be0.md) | 55 | `result-track:a1f0860cbf3716a831058be0852df5e6acd5041860e92f6e1c098cb703d33225` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt04/Variantd3ca56a5c26277d4f3fb36dc8ba18fb733bb841a96214ce9ec6c7b9289b8dbd8.lean/declarations/psierrortail-integrable--9f4078df585feaf307561a9e.md) | 68 | `result-track:9f4078df585feaf307561a9eaef8b818d306372c9614ed31e1f1b9ba8a6565e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
