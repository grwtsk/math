# Verification target: GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ba568f05f1f72b6e8900bf57103fe9100555926",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedAbelDepthDispersion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ba568f05f1f72b6e8900bf57103fe9100555926`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedAbelDepthDispersion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedAbelDepthDispersion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicSignedAbelDepthPacket`](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SignedAbelDepthBilinearModel](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel--48f6fffbc710d01b5b2067d0.md) | 39 | `declaration-track:48f6fffbc710d01b5b2067d00e082096f048100846ac73e03e0ece08f82f06c9` |
| 2 | `def` | [SignedAbelDepthBilinearModel.structuredSlice](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel-structuredslice--25dc7bafdfb9f322cd174295.md) | 51 | `declaration-track:25dc7bafdfb9f322cd1742952b84fd8cb763a48f5427613993fa63ab9d63bc9a` |
| 3 | `def` | [SignedAbelDepthBilinearModel.structuredPacket](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel-structuredpacket--c9550aac71b548f02fb54415.md) | 57 | `declaration-track:c9550aac71b548f02fb5441549dd8a75ed7d934f8b80833e7800b8d3953bacfd` |
| 4 | `def` | [SignedAbelDepthBilinearModel.residualPacket](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel-residualpacket--7a827c28db33f73623375dac.md) | 62 | `declaration-track:7a827c28db33f73623375dac1c39c2a6f8e73a386bdf0b67582eca4036803567` |
| 5 | `theorem` | [SignedAbelDepthBilinearModel.depthSlice_eq_structured_add_residual](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel-depthslice-eq-structured-add-residual--5a22f8863b5f879eea2182ef.md) | 67 | `result-track:5a22f8863b5f879eea2182efe1fe3826709ff2e4b45114ebfd4a7cdf3c7a954e` |
| 6 | `theorem` | [SignedAbelDepthBilinearModel.depthPacket_eq_structured_add_residual](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearmodel-depthpacket-eq-structured-add-residual--9ce1df41ae90c6f03b881686.md) | 76 | `result-track:9ce1df41ae90c6f03b881686ad51ffb948f2de725c2f522215a18f37f32751bd` |
| 7 | `def` | [SubpolynomialSignedAbelDepthBilinearEstimate](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/subpolynomialsignedabeldepthbilinearestimate--7720b1a7a0bbbd178062d76a.md) | 94 | `declaration-track:7720b1a7a0bbbd178062d76ab64bc908ac3ebffe3659513a8e1d2f43b3d293e0` |
| 8 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/subpolynomialdyadicsignedabeldepthpacket-of-bilinearestimate--ce6fe1c40ff7e1a2faf190a3.md) | 103 | `result-track:ce6fe1c40ff7e1a2faf190a36fa8e2e4bf717ab842be5ba7dc1952d1f94f7db0` |
| 9 | `theorem` | [riemannHypothesis_of_signedAbelDepthBilinearEstimate](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/riemannhypothesis-of-signedabeldepthbilinearestimate--e9e22caa943d9e57cb774962.md) | 116 | `result-track:e9e22caa943d9e57cb7749620f38a0db33cf9f36dbeb16f16b53e02e5409cc7f` |
| 10 | `structure` | [SignedAbelDepthSplitBudget](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthsplitbudget--b3bc600a4a578c561e81359a.md) | 129 | `declaration-track:b3bc600a4a578c561e81359a744d25d9142eca9f2f25aa8623121d2dd71c0a03` |
| 11 | `theorem` | [signedAbelDepthBilinearEstimate_of_splitBudget](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/signedabeldepthbilinearestimate-of-splitbudget--4b21b4810eabbbca9ba7b458.md) | 146 | `result-track:4b21b4810eabbbca9ba7b458a7eb97c8b434d18aa0edf5dfc2ae06a4313ca232` |
| 12 | `structure` | [PositiveNormToSignedDepthAdapter](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/positivenormtosigneddepthadapter--9847f41589039bab3dbf9ab8.md) | 167 | `declaration-track:9847f41589039bab3dbf9ab8e68d0f375249a639124aad57cffa7a012d5f01e5` |
| 13 | `theorem` | [riemannHypothesis_of_positiveNormAdapter](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/declarations/riemannhypothesis-of-positivenormadapter--db1312e27c188cbb196bcabe.md) | 176 | `result-track:db1312e27c188cbb196bcabe68dad2e325a2e06a815a0cd2b6a09aebc530e058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
