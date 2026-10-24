# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt02.Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "554eed563f1565c0bd8d45af80d979ceb4ff8d80",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `554eed563f1565c0bd8d45af80d979ceb4ff8d80`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean.json)

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
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/psierrortail--b1cb08e12c676583c8f8f494.md) | 14 | `declaration-track:b1cb08e12c676583c8f8f494d97d8a1c4e92f89cb0f5fa816fa0150b2c8d52c9` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel--965b106723c1f1babc971744.md) | 16 | `declaration-track:965b106723c1f1babc971744de4b94ca9a6e17ec826a2d871726c87625eb80de` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-measurable--384120339515dde1f082a160.md) | 19 | `result-track:384120339515dde1f082a1600952440e0919a681b782d66ef8b3f720ce40403d` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-slice--d98627eadea09a7349bafb6c.md) | 24 | `result-track:d98627eadea09a7349bafb6c0612166420f51552269f5183280923d32a2633e7` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-slice-integrable--4bdb801197e98f3a1caa6be1.md) | 30 | `result-track:4bdb801197e98f3a1caa6be16bbfcb13aec7876cf0a4b660e13a108d3ff6ab8d` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-slice-norm-integral--19d4375bf0de565ab4c46125.md) | 38 | `result-track:19d4375bf0de565ab4c46125bdbe06a8ad4385c010094d6ac49d87df5587347a` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-integrable--68ec347d6d33ca7548314910.md) | 45 | `result-track:68ec347d6d33ca7548314910a7904c18caa799dbb7df371c7d34638483d2a4d5` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/trianglekernel-inner-eq--c4a41c4ff8eb8decaa2f77bb.md) | 55 | `result-track:c4a41c4ff8eb8decaa2f77bbd5747564e498356fbe45b46aa4b4141c078d5e97` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt02/Variant6a6d0df5bfa6c903aee05db7226646ccff77c23ee181528452b48245d972ff4d.lean/declarations/psierrortail-integrable--a7f65987fb4a91e7e8dafcdd.md) | 68 | `result-track:a7f65987fb4a91e7e8dafcdd60b4a47129d96525ef12953c84eb79824820385c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
