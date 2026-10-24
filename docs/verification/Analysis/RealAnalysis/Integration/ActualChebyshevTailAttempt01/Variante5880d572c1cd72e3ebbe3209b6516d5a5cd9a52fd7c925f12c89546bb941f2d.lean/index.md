# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt01.Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd2c3719a9a6189ba4b3411c5f41d135e7c6a63d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd2c3719a9a6189ba4b3411c5f41d135e7c6a63d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean.json)

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
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/psierrortail--513345dfc411be2a99e93e3d.md) | 22 | `declaration-track:513345dfc411be2a99e93e3d2db602ec96909bdfd317b4c45e5be62b22070c27` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel--f5d7957a99b589ea5019063d.md) | 24 | `declaration-track:f5d7957a99b589ea5019063d9dda0ac0ad15301dca268ebc79ca373f29a9ff95` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-measurable--a5ea66fdda8cbe8a75ecb6ed.md) | 27 | `result-track:a5ea66fdda8cbe8a75ecb6edd46dea7f486f22cc46d0b08e8453671803ab0ae0` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-slice--48a09f03b0aedd6947214f4a.md) | 32 | `result-track:48a09f03b0aedd6947214f4a61b1c3397076b6da90d1a98813cc165a19c0e15a` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-slice-integrable--22b563d2fcf40d3fc6a1ceac.md) | 38 | `result-track:22b563d2fcf40d3fc6a1ceac5c0b3a191aff7ebd661ce9f155f91821dd8710e3` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-slice-norm-integral--bb2364eab66befce4ea676b1.md) | 44 | `result-track:bb2364eab66befce4ea676b1c4052bc5ff6f093587d29e23b1d519149238e6ff` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-integrable--f50458d0f91b0250c2515ff4.md) | 51 | `result-track:f50458d0f91b0250c2515ff40a2b4ecc73efd5137eb7f537a3938b9c3b3efc2a` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/trianglekernel-inner-eq--7c34f5e422c90d81edea931c.md) | 61 | `result-track:7c34f5e422c90d81edea931caf0fd3b824c6675d1817466a8be52135f6fa6d73` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt01/Variante5880d572c1cd72e3ebbe3209b6516d5a5cd9a52fd7c925f12c89546bb941f2d.lean/declarations/psierrortail-integrable--f7b3955128a8f5467f219b58.md) | 74 | `result-track:f7b3955128a8f5467f219b584a2707d062b4243ab42bd8928d9912dee27df9ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
