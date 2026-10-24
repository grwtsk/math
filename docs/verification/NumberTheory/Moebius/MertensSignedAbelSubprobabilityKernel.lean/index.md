# Verification target: GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60d8e7a6036e14738b9e87fca74f96dd3b50cf00",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60d8e7a6036e14738b9e87fca74f96dd3b50cf00`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensSignedAbelNormalizedResponse`](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedSignedAbelShiftKernel](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernel--4f8446ea775f15750be8fe4a.md) | 21 | `declaration-track:4f8446ea775f15750be8fe4a08586f399ea71327a6c141cb22febd930efa7532` |
| 2 | `theorem` | [normalizedSignedAbelShiftKernel_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernel-nonneg--06bfe27372fe8104e0366de4.md) | 30 | `result-track:06bfe27372fe8104e0366de42cd8ee1c3f0f7133fbe5a13a67c59939aec852c8` |
| 3 | `def` | [normalizedSignedAbelShiftKernelMass](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass--58c75e1da994594300dbf3bc.md) | 40 | `declaration-track:58c75e1da994594300dbf3bcf7e3ad61df0261c81f250d601655f866c3514392` |
| 4 | `theorem` | [normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass-eq-scaledweightmass--937e8cf442c4f8088f2bb733.md) | 50 | `result-track:937e8cf442c4f8088f2bb733ecb1025caf542412e59039119476c3b5e4792202` |
| 5 | `theorem` | [normalizedSignedAbelShiftKernelMass_le_one](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelshiftkernelmass-le-one--37feeb2e9cc7accdc117b00a.md) | 75 | `result-track:37feeb2e9cc7accdc117b00a91261108e79254ad9076ed346554006f74973c8d` |
| 6 | `theorem` | [normalizedSignedAbelDepthShiftResponse_eq_kernelSum](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabeldepthshiftresponse-eq-kernelsum--095f67a27f552f1770fc4aa5.md) | 96 | `result-track:095f67a27f552f1770fc4aa5f2bcec6ca73536050d4f11710d6d286e3c6a418a` |
| 7 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-kernelautocorrelation--64110996eb030a553be6370a.md) | 116 | `result-track:64110996eb030a553be6370a4df3e7b1061c38db61e937895483e6f7b9975daa` |
| 8 | `def` | [NormalizedSignedAbelKernelSubprobability](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelkernelsubprobability--ebe352905e097cbfb9672d07.md) | 133 | `declaration-track:ebe352905e097cbfb9672d076bc6cd3ecf9d5e56ccfb631c65d14a89ccb2b5c9` |
| 9 | `theorem` | [normalizedSignedAbelKernelSubprobability](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/declarations/normalizedsignedabelkernelsubprobability--2198a5b976e811c34dc10139.md) | 140 | `result-track:2198a5b976e811c34dc10139b855fc39d33affbc92ef5c6df832e7a7b39800a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
