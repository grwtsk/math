# Verification target: GRWTSK.NumberTheory.Moebius.MertensWeightedChowlaPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "112150362f5d31be9e5b6823e8f0b3598e47decb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `112150362f5d31be9e5b6823e8f0b3598e47decb`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensSignedAbelSubprobabilityKernel`](../../../../mathematics/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensTwoPointChowlaAverage](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/weightedmertenstwopointchowlaaverage--1b5d10351c2e20a4f5d14304.md) | 21 | `declaration-track:1b5d10351c2e20a4f5d143045e27ae55664cf0531b931eec298bffb0496974e5` |
| 2 | `theorem` | [normalizedKernelAutocorrelation_eq_weightedChowlaAverage](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/normalizedkernelautocorrelation-eq-weightedchowlaaverage--0a69e03ed98edc727e730b81.md) | 29 | `result-track:0a69e03ed98edc727e730b81362b4db6ed98486bf65b22a2016f5cd5df66d85b` |
| 3 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-weightedchowlaaverage--2155f9d6d0c5ba6b61897230.md) | 48 | `result-track:2155f9d6d0c5ba6b61897230d766eb899e8a56470d0c43f26ff4e4c7e891a2b4` |
| 4 | `theorem` | [weightedMertensTwoPointChowlaAverage_le_of_prefix_bound](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/weightedmertenstwopointchowlaaverage-le-of-prefix-bound--7c27e81ccfddcabc677a081a.md) | 58 | `result-track:7c27e81ccfddcabc677a081ac2f060e7937f95650cb91ed7b363dfea8672b70c` |
| 5 | `theorem` | [abs_weightedMertensTwoPointChowlaAverage_le_of_abs_prefix_bound](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/abs-weightedmertenstwopointchowlaaverage-le-of-abs-prefix-bound--537ad9b7f86666ec038d1a6e.md) | 89 | `result-track:537ad9b7f86666ec038d1a6e185b33060f7b55e0c14eed1ad1b4bafe69ddf327` |
| 6 | `def` | [weightedMertensDyadicChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/weightedmertensdyadicchowlapacket--6252e83bf455fef8b86f4b67.md) | 129 | `declaration-track:6252e83bf455fef8b86f4b675c8c8a11d75de738e13cf80629905f06334c9a3e` |
| 7 | `theorem` | [weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/weightedmertensdyadicchowlapacket-eq-signedabeldepthpacket--a6a207e325a03fa7fde3e1ba.md) | 137 | `result-track:a6a207e325a03fa7fde3e1baf97f4c96db4026a5a7b1de8a0f953163dc8db253` |
| 8 | `def` | [SubpolynomialDyadicWeightedMertensChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/subpolynomialdyadicweightedmertenschowlapacket--09b5248c4abf092dbe44c5a8.md) | 151 | `declaration-track:09b5248c4abf092dbe44c5a86baf251b0c66797208c94b48d89e7f0722a9889b` |
| 9 | `theorem` | [subpolynomialDyadicWeightedMertensChowlaPacket_iff_signedDepth](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/subpolynomialdyadicweightedmertenschowlapacket-iff-signeddepth--32e0269e19cb70b7b2eca283.md) | 159 | `result-track:32e0269e19cb70b7b2eca283e1ccf2fcb91bac325d32a0fff89f0ee30ea31e06` |
| 10 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicWeightedMertensChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/declarations/riemannhypothesis-of-subpolynomialdyadicweightedmertenschowlapacket--dafc9728bc90fdc570b1c41b.md) | 177 | `result-track:dafc9728bc90fdc570b1c41bb6e3e15f358dabe2018bceb40ff1818c3a363b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
