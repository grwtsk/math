# Verification target: GRWTSK.NumberTheory.Moebius.MertensHarmonicWeightedChowlaPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beda3189ebf7791a2856274b8d0fb28a2c0bb92f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beda3189ebf7791a2856274b8d0fb28a2c0bb92f`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensWeightedChowlaPacket`](../../../../mathematics/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dyadicMertensShiftWeightDrop_eq_zero_of_endpoint_lt_left](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/dyadicmertensshiftweightdrop-eq-zero-of-endpoint-lt-left--ef804de96892c81ec92bfc35.md) | 21 | `result-track:ef804de96892c81ec92bfc35462b80bfcfde87931db40c7aa53326b76a1068d4` |
| 2 | `theorem` | [dyadicMertensShiftWeightDrop_eq_reciprocalDrop_of_left_le](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/dyadicmertensshiftweightdrop-eq-reciprocaldrop-of-left-le--d922aa4b5953379034e1f68e.md) | 35 | `result-track:d922aa4b5953379034e1f68e849c8bcc2e8880b28c8f00bbc7a3c4bae8512c66` |
| 3 | `theorem` | [normalizedSignedAbelShiftKernel_eq_harmonic](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/normalizedsignedabelshiftkernel-eq-harmonic--46bd05aed19acebde5d0019d.md) | 50 | `result-track:46bd05aed19acebde5d0019d0a7803c981b2ef823e5b174c73802210de67b4a6` |
| 4 | `theorem` | [normalizedSignedAbelShiftKernel_eq_zero_of_endpoint_lt_left](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/normalizedsignedabelshiftkernel-eq-zero-of-endpoint-lt-left--0dd3bb94594819d40e13e98f.md) | 65 | `result-track:0dd3bb94594819d40e13e98f12baa80e9d3b993b3db335eb47fc20cc953effd2` |
| 5 | `theorem` | [normalizedSignedAbelShiftKernel_eq_maxReciprocalDrop](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/normalizedsignedabelshiftkernel-eq-maxreciprocaldrop--c346c53eae624b52032d693c.md) | 80 | `result-track:c346c53eae624b52032d693c1400f8447fd2ec96ddfab1633b17ac19f3c2d285` |
| 6 | `theorem` | [normalizedSignedAbelShiftKernelMass_eq_harmonicTail](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/normalizedsignedabelshiftkernelmass-eq-harmonictail--2d207045c01efa56215204d0.md) | 99 | `result-track:2d207045c01efa56215204d09eb1ca417f73978e5215636d12077e6d12906def` |
| 7 | `def` | [harmonicWeightedMertensTwoPointChowlaAverage](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/harmonicweightedmertenstwopointchowlaaverage--e717aee0765f7bc4a7a92c9f.md) | 111 | `declaration-track:e717aee0765f7bc4a7a92c9f15a1e0ee7620ad5545a9c6068418a77fb5e4f38b` |
| 8 | `theorem` | [weightedMertensTwoPointChowlaAverage_eq_harmonic](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/weightedmertenstwopointchowlaaverage-eq-harmonic--621d5d3288b0d9ae7b058b97.md) | 124 | `result-track:621d5d3288b0d9ae7b058b97c52a65b1f4b931ff0853fc88243b547bcab02243` |
| 9 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_harmonicChowla](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-harmonicchowla--e9cf52a59cf093897fa852bf.md) | 145 | `result-track:e9cf52a59cf093897fa852bf955ead7fb9db3ed2da7b866672c626bd302efa3c` |
| 10 | `def` | [harmonicWeightedMertensDyadicChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/harmonicweightedmertensdyadicchowlapacket--ad1fd9762b9cbb26b6d10fe1.md) | 155 | `declaration-track:ad1fd9762b9cbb26b6d10fe1854c05a0213802b197f9c1f288416ff9da4878ca` |
| 11 | `theorem` | [harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/harmonicweightedmertensdyadicchowlapacket-eq-weightedpacket--93645db4566d1e78743650c7.md) | 162 | `result-track:93645db4566d1e78743650c7852916b737f896e5ff8eb52e54def7fb78d922ef` |
| 12 | `def` | [SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/subpolynomialdyadicharmonicweightedmertenschowlapacket--9628fa0bfb139b326d9403c8.md) | 173 | `declaration-track:9628fa0bfb139b326d9403c859e61d7b879b82864009f233246247a98cbd9d17` |
| 13 | `theorem` | [subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_iff_weighted](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/subpolynomialdyadicharmonicweightedmertenschowlapacket-iff-weighted--f6e5b33c400aad5b945c5bdc.md) | 180 | `result-track:f6e5b33c400aad5b945c5bdcbf4fe764c1f2e5284228e3ce4da4267051f2f5d9` |
| 14 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket](../../../../mathematics/NumberTheory/Moebius/MertensHarmonicWeightedChowlaPacket.lean/declarations/riemannhypothesis-of-subpolynomialdyadicharmonicweightedmertenschowlapac--c8f75e28484cd1276bd666a8.md) | 198 | `result-track:c8f75e28484cd1276bd666a85cfd80c93fc0efc982c6b02247ce37eac19cc9b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
