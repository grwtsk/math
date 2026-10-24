# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt03.Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4e3bf7f642fe732b345c90686e99411f3c963cf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4e3bf7f642fe732b345c90686e99411f3c963cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean.json)

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
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/psierrortail--e87c8c827569e7246cbe6a89.md) | 22 | `declaration-track:e87c8c827569e7246cbe6a89f7a264edc9ad72eebf9208b58b5bab56f6a3c28d` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel--effe82d1247e56c5448b325a.md) | 24 | `declaration-track:effe82d1247e56c5448b325a5ec5ecbae7891700ec661397850ff675b4c51b5b` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-measurable--89574e87c68443995951b8e7.md) | 27 | `result-track:89574e87c68443995951b8e78f01db517d9ef4239fe2a94f80328119a83c10f4` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-slice--fe989d7b04cb3c6df7d56a81.md) | 32 | `result-track:fe989d7b04cb3c6df7d56a819daab4e823e810c458e95e33ccc1727d5b897657` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-slice-integrable--f45f121a590e2a077a448f63.md) | 38 | `result-track:f45f121a590e2a077a448f63930b38fb127fcbdf55009d1643a806a30bbbbaaa` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-slice-norm-integral--c9f15dcabdb2a30d589c363f.md) | 44 | `result-track:c9f15dcabdb2a30d589c363f80d57e97946d0b634487dac8c692b3156cf8c836` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-integrable--f1ed90bf972cff66ccc88e2a.md) | 53 | `result-track:f1ed90bf972cff66ccc88e2a41678967c06492da8fe93abac1b857ac41fddcab` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/trianglekernel-inner-eq--41cc99aaa9496e78ca5b9ab3.md) | 63 | `result-track:41cc99aaa9496e78ca5b9ab35180c16884a12d6316aa20a6dca254d3d035b587` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant8c28d387fce64a4f085f6104b9d260c71d1756600bf06a3439d9995967c51eed.lean/declarations/psierrortail-integrable--4e4e93e5bdb739ee8f49bef4.md) | 76 | `result-track:4e4e93e5bdb739ee8f49bef4c3f3edc1518334fe2d65febdbdede7b9659dbe66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
