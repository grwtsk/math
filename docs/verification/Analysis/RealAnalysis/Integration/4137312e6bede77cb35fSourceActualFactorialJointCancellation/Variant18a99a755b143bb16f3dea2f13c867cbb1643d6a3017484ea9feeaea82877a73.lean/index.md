# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.4137312e6bede77cb35fSourceActualFactorialJointCancellation.Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d128a091939ddb4646844a56b1e79d376a693367",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d128a091939ddb4646844a56b1e79d376a693367`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialMellinTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorialNondefectSector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/factorialnondefectsector--0cb17d3155d5c9b86263c3f3.md) | 30 | `declaration-track:0cb17d3155d5c9b86263c3f3ef1137728a48cdb64a3b3c1e3c63cd042533c227` |
| 2 | `def` | [actualFactorialJointDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/actualfactorialjointdensity--fa01af478950048e8113b9e4.md) | 36 | `declaration-track:fa01af478950048e8113b9e479d684f6703f1ab44e66f46e201033c2c16d2225` |
| 3 | `theorem` | [actualFactorialJointDensity_eq_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/actualfactorialjointdensity-eq-difference--2fe333d2907dd93aafa63968.md) | 43 | `result-track:2fe333d2907dd93aafa6396848c76f3f4f23770d81007a67e96a7c13d9155b67` |
| 4 | `theorem` | [factorialNondefect_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/factorialnondefect-tail-integrable--a6ca47776f3c8100d0821368.md) | 56 | `result-track:a6ca47776f3c8100d082136831b7b923101a9649592bbef22a7f4aa9e693881d` |
| 5 | `theorem` | [actualFactorialJointDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/actualfactorialjointdensity-integrable--0c723ede353aa1178e4b5563.md) | 64 | `result-track:0c723ede353aa1178e4b5563c92cae01b401448f7ce2dc8a022fca046f8c35f8` |
| 6 | `theorem` | [actual_leading_and_tail_eq_joint_factorial_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/actual-leading-and-tail-eq-joint-factorial-integral--7328585dea23e0e3d8bcf919.md) | 77 | `result-track:7328585dea23e0e3d8bcf919ee740c9cc371ef204c9233c25b90ed896edbdbee` |
| 7 | `theorem` | [actual_factorial_cancelled_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/4137312e6bede77cb35fSourceActualFactorialJointCancellation/Variant18a99a755b143bb16f3dea2f13c867cbb1643d6a3017484ea9feeaea82877a73.lean/declarations/actual-factorial-cancelled-kernel--2b08a747f072cf24dceae7ef.md) | 104 | `result-track:2b08a747f072cf24dceae7ef9cd7ca3e184146a8bb495c6c52b7613a18fea557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
