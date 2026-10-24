# Verification target: GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedLengthTranspose

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "719c8e2193cfc30c1e421772402732a666c0a8ad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `719c8e2193cfc30c1e421772402732a666c0a8ad`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreNonboundaryReciprocalSquareL1`](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreNonboundarySignedTerminalContribution](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedterminalcontribution--1f47866fb8ffe89fa8dd050b.md) | 21 | `declaration-track:1f47866fb8ffe89fa8dd050badc31b72c7ab4472c4a8152d9e1f08d3263d8774` |
| 2 | `def` | [harmonicSignedLongInteriorContribution](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/harmonicsignedlonginteriorcontribution--4a3ce6addd5abced6a517b7f.md) | 27 | `declaration-track:4a3ce6addd5abced6a517b7f4cc25ed5f5b0f96059c01fe5e5e854c30779bcfc` |
| 3 | `theorem` | [coreNonboundarySignedDepthRemainder_eq_terminal_add_interior](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysigneddepthremainder-eq-terminal-add-interior--d20aa25033fd158421c33dbd.md) | 36 | `result-track:d20aa25033fd158421c33dbd72c85f770a4a518b7c536b23ecef8ed6399bbf26` |
| 4 | `theorem` | [sum_succ_range_filter_eq_Ico_signed](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/sum-succ-range-filter-eq-ico-signed--81cfb458ecce72d41df8d3a2.md) | 57 | `result-track:81cfb458ecce72d41df8d3a27602d9e0496685a12f0dd7510c9e8f6d1dfdd06f` |
| 5 | `theorem` | [coreNonboundarySignedTerminalContribution_eq_selector](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedterminalcontribution-eq-selector--b3f8b914d7a1057c874980fd.md) | 83 | `result-track:b3f8b914d7a1057c874980fd52f4e29f8083315935e3f92b69d83aa24eb169f1` |
| 6 | `theorem` | [harmonicSignedLongInteriorContribution_eq_selector](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/harmonicsignedlonginteriorcontribution-eq-selector--68803ca3a1c05e065165671c.md) | 124 | `result-track:68803ca3a1c05e065165671c373a071ba53e15862c456ef7bc4b0714d1c89f53` |
| 7 | `theorem` | [coreNonboundarySignedDepthRemainder_eq_lengthwise](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysigneddepthremainder-eq-lengthwise--1d3083ca711bce33e6e16c79.md) | 178 | `result-track:1d3083ca711bce33e6e16c79d03170ade7cfd8b728e68354e4bc6e7fa82a798a` |
| 8 | `def` | [coreNonboundarySignedLengthSlice](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedlengthslice--7592bdf5c9eeff2f62d44cbd.md) | 196 | `declaration-track:7592bdf5c9eeff2f62d44cbd0a85de2a0eb10766047473cea7904af2f703e2b5` |
| 9 | `def` | [coreNonboundarySignedLengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedlengthpacket--af1f26a9928a22dde2e6915e.md) | 205 | `declaration-track:af1f26a9928a22dde2e6915e98d0ee4dc65ba85d4f4c26fa1f6b6141f8eba2a4` |
| 10 | `theorem` | [coreNonboundarySignedRemainderPacket_eq_sum_depth](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedremainderpacket-eq-sum-depth--2689494395780859c86a334f.md) | 212 | `result-track:2689494395780859c86a334f6a79d750cd9d575c252c148a9e0fb06697bb9356` |
| 11 | `theorem` | [coreNonboundarySignedRemainderPacket_eq_lengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/corenonboundarysignedremainderpacket-eq-lengthpacket--124c1433218eb9a4b6180bb3.md) | 223 | `result-track:124c1433218eb9a4b6180bb31738a3c50ef5bfe2e0f70a583e3a8ea06714c2fc` |
| 12 | `def` | [SubpolynomialCoreNonboundarySignedLengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/subpolynomialcorenonboundarysignedlengthpacket--a49af3c33fca99368edba669.md) | 244 | `declaration-track:a49af3c33fca99368edba6691736f3363b67f182981bbc4aefe9d5b8df46df0a` |
| 13 | `theorem` | [subpolynomialCoreNonboundarySignedLengthPacket_of_reciprocalSquareL1](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/subpolynomialcorenonboundarysignedlengthpacket-of-reciprocalsquarel1--0ae00f1fe24f333b7f160f66.md) | 252 | `result-track:0ae00f1fe24f333b7f160f6634dcdb9cfaf0e2891bbc9800843e976faae2b607` |
| 14 | `theorem` | [subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/subpolynomialcorelongdeepremainderpacket-of-boundary-and-signedlength--6a2aaa680b6fa06a5a97f830.md) | 270 | `result-track:6a2aaa680b6fa06a5a97f83096b39709d8acebce12b5ee07bd5cf644f236df12` |
| 15 | `theorem` | [riemannHypothesis_of_classicalWeakMertensStep_and_signedLength](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/riemannhypothesis-of-classicalweakmertensstep-and-signedlength--ba6f3074cc2ff48a552a2313.md) | 293 | `result-track:ba6f3074cc2ff48a552a231370678887b8a9308fca36dcb61e140e2b4b23a7a3` |
| 16 | `theorem` | [signedRetainedLengthCancellation_hostileWitness](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/declarations/signedretainedlengthcancellation-hostilewitness--4730ec7721a92d78949bde87.md) | 305 | `result-track:4730ec7721a92d78949bde87e38722cbb38b46df0d61095ec26972ec287699c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
