# Verification target: GRWTSK.NumberTheory.Moebius.MertensShallowDepthPayment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3556714a377d18f199d0c9c6360a863068f8ed",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3556714a377d18f199d0c9c6360a863068f8ed`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensShallowDepthPayment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensLongShortIntervalSupplier`](../../../../mathematics/NumberTheory/Moebius/MertensLongShortIntervalSupplier.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicShallowDepthCount](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmicshallowdepthcount--d72db16c2fe9a62c94dc94ee.md) | 21 | `declaration-track:d72db16c2fe9a62c94dc94ee85b4f5d8047888f69aabcfbdc47e8e15e74543c5` |
| 2 | `def` | [logarithmicShallowDepthPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmicshallowdepthpacket--c923ef7fe3026e59eebd3eb2.md) | 25 | `declaration-track:c923ef7fe3026e59eebd3eb21f0f0feffd31a7a485c208b48af8dc04fa292449` |
| 3 | `theorem` | [abs_signedAbelDepthSlice_le_two_of_depth](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/abs-signedabeldepthslice-le-two-of-depth--d8fefcabe761de2866a87060.md) | 30 | `result-track:d8fefcabe761de2866a87060c7bd63dc78f02a29392afdb188b5a41e39c1b6f9` |
| 4 | `theorem` | [abs_signedAbelDepthSlice_le_two_of_shallow](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/abs-signedabeldepthslice-le-two-of-shallow--b363abaa28fb6b65a98dfb6c.md) | 61 | `result-track:b363abaa28fb6b65a98dfb6ca995d3327abc482f286761ae20772be451bc55e1` |
| 5 | `theorem` | [abs_logarithmicShallowDepthPacket_le](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/abs-logarithmicshallowdepthpacket-le--c5524e62ddd3c44e7c6e3432.md) | 69 | `result-track:c5524e62ddd3c44e7c6e343203fec24a72aabb071557921aea37fb1955805f2c` |
| 6 | `theorem` | [logarithmicShallowDepthCount_le_threshold](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmicshallowdepthcount-le-threshold--119e8897e0d668482680e13b.md) | 90 | `result-track:119e8897e0d668482680e13b5459e92ba48088dcafc54c650168836d3255712d` |
| 7 | `def` | [SubpolynomialLogarithmicShallowDepthPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/subpolynomiallogarithmicshallowdepthpacket--0669edca7f0afecba89b3112.md) | 97 | `declaration-track:0669edca7f0afecba89b3112f7dda164dc9aebf61e268098c40f69596d1f6449` |
| 8 | `theorem` | [subpolynomialLogarithmicShallowDepthPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/subpolynomiallogarithmicshallowdepthpacket--01f84445595ce650358d1432.md) | 104 | `result-track:01f84445595ce650358d14322f754bcea74e3f5e7917d80114626a5fa435410d` |
| 9 | `def` | [logarithmicLongDepthRemainder](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmiclongdepthremainder--aa73b08bdf7bd81048fec71a.md) | 126 | `declaration-track:aa73b08bdf7bd81048fec71a453c0d5dece05eeebcee9c8bc4c6c281a2729b4d` |
| 10 | `theorem` | [logarithmicLongHarmonicRemainderPacket_eq_sum_depth](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmiclongharmonicremainderpacket-eq-sum-depth--7274fedcc5af267d7b29266b.md) | 135 | `result-track:7274fedcc5af267d7b29266bcc6b90bfb1e652af2fcda65100e14408cfd445a8` |
| 11 | `def` | [logarithmicShallowLongRemainderPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmicshallowlongremainderpacket--bb5bba9ad6687df3d2a12c99.md) | 149 | `declaration-track:bb5bba9ad6687df3d2a12c99801284ac8a273b0142070b7406b4a4bc344d7373` |
| 12 | `def` | [logarithmicDeepLongRemainderPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmicdeeplongremainderpacket--27b8cc03e3aa8eb4c178553b.md) | 154 | `declaration-track:27b8cc03e3aa8eb4c178553b923b05f58f2a8fa3661edc2c8d5d90c194b5af6b` |
| 13 | `theorem` | [logarithmicLongRemainder_eq_shallow_add_deep](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/logarithmiclongremainder-eq-shallow-add-deep--8bee5a2efb162d885be34cb8.md) | 159 | `result-track:8bee5a2efb162d885be34cb8369ac2f2a3dcb46536810cce49dab2a1be2df011` |
| 14 | `structure` | [DeepLongShortIntervalRegime](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/deeplongshortintervalregime--b82b170aab9fa37de1b4baf3.md) | 178 | `declaration-track:b82b170aab9fa37de1b4baf350381906c0e3a9e6cc13f0348c161abc733fa004` |
| 15 | `def` | [SubpolynomialDeepLongHarmonicRemainderPacket](../../../../mathematics/NumberTheory/Moebius/MertensShallowDepthPayment.lean/declarations/subpolynomialdeeplongharmonicremainderpacket--fa9d731ba1e1814d1eabd0cb.md) | 193 | `declaration-track:fa9d731ba1e1814d1eabd0cb37b9dd0f950916d28f9c03eea5a1da4f00223ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
