# Verification target: GRWTSK.NumberTheory.Moebius.ParityFourierZeroNonzeroSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94e323e1acfbe7953960e1f507636a8d486aa8f4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94e323e1acfbe7953960e1f507636a8d486aa8f4`.

Source path: `GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AdditiveTwistParityFourierFactorization`](../../../../mathematics/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityMertensPrefix](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/paritymertensprefix--36494951b333225bbdb62b51.md) | 40 | `declaration-track:36494951b333225bbdb62b515a22fab539b8aa5ee905b46f8c51a8bae3e5f008` |
| 2 | `def` | [paritySquarefreeDiagonal](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/paritysquarefreediagonal--f43e12782c739df6f0ab7a78.md) | 44 | `declaration-track:f43e12782c739df6f0ab7a78b6a14ce9647a8abbdf2902b8635f518def06260f` |
| 3 | `theorem` | [parityOnePointMobiusFourierSum_zero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityonepointmobiusfouriersum-zero--6aa13457ea6a5d66882793ce.md) | 49 | `result-track:6aa13457ea6a5d66882793ce8fd9637115c6a0f4962739a28f582eea9a36e3b1` |
| 4 | `theorem` | [parityOnePointMobiusFourierDiagonal_zero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityonepointmobiusfourierdiagonal-zero--4ed4d005082fd136613988ad.md) | 60 | `result-track:4ed4d005082fd136613988ad9ab3a8674f30a74f732414b4326135de004793c3` |
| 5 | `def` | [parityFourierZeroModeQuadraticMajorant](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfourierzeromodequadraticmajorant--6b714a368056f2b4f19baa2d.md) | 70 | `declaration-track:6b714a368056f2b4f19baa2d2a99cdddf7ed39eb6ea84d61218d88cb3ada3af5` |
| 6 | `theorem` | [parityFourierQuadraticMajorant_zero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfourierquadraticmajorant-zero--b32a080d993b3617882fb373.md) | 80 | `result-track:b32a080d993b3617882fb37363e7a5bdd9655c27a712bf4fec4f50aece27f362` |
| 7 | `def` | [nonzeroSquareModulusFrequencySet](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/nonzerosquaremodulusfrequencyset--5c087aa9ff9a06006e9122a7.md) | 92 | `declaration-track:5c087aa9ff9a06006e9122a738554732ae65e72a4da883a535db366516998ef0` |
| 8 | `def` | [parityFourierZeroModeEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfourierzeromodeendpointmajorant--80f8d4cd645a35c19ce2883f.md) | 97 | `declaration-track:80f8d4cd645a35c19ce2883fe56c0e71a69da38da9cc8eb6b86c857f76529ae8` |
| 9 | `def` | [parityFourierNonzeroFrequencyEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfouriernonzerofrequencyendpointmajorant--671da90d5f7c7c759a44c002.md) | 107 | `declaration-track:671da90d5f7c7c759a44c0025b2636306b6ec4c5fee2cc897a9c7cdd179978d4` |
| 10 | `theorem` | [parityFourierEndpointMajorant_eq_zero_add_nonzero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfourierendpointmajorant-eq-zero-add-nonzero--355c68611de86275f1195a19.md) | 119 | `result-track:355c68611de86275f1195a198741410c811344f743bc610a4edee4d7599244fc` |
| 11 | `def` | [effectiveSquareModulusReciprocalMass](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/effectivesquaremodulusreciprocalmass--202af91715aa1b919776c1ff.md) | 143 | `declaration-track:202af91715aa1b919776c1ffae24e97cda9b1f721ebf5396e1c2e4997bbceaf6` |
| 12 | `theorem` | [effectiveSquareModulusReciprocalMass_le_two](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/effectivesquaremodulusreciprocalmass-le-two--cf3e25fdefac281d1b3f83da.md) | 152 | `result-track:cf3e25fdefac281d1b3f83daf21e9bfa8bc7f2ee685ef93d6bbc68ffcfd6a0ca` |
| 13 | `theorem` | [paritySquarefreeDiagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/paritysquarefreediagonal-nonneg--93b87b51d48fa82d8a14c2d4.md) | 192 | `result-track:93b87b51d48fa82d8a14c2d47593f969a452026234bd97aeb59eb2d12219d867` |
| 14 | `theorem` | [paritySquarefreeDiagonal_le_endpoint](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/paritysquarefreediagonal-le-endpoint--0de7be88ff2fc73e02ac6e9c.md) | 199 | `result-track:0de7be88ff2fc73e02ac6e9c78975e32f84732405314323d1ac83e2dd3723787` |
| 15 | `def` | [ordinaryMertensPrefix](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/ordinarymertensprefix--8d156257bc0f5cbeef479053.md) | 225 | `declaration-track:8d156257bc0f5cbeef47905325d9f5881171a6b58f2f69ff3c9f6e87d559cb94` |
| 16 | `theorem` | [ordinaryMertensPrefix_eq_even_add_odd](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/ordinarymertensprefix-eq-even-add-odd--e3250317b9f74184191eb993.md) | 230 | `result-track:e3250317b9f74184191eb99377d2f392f76ec0520be426ba693ac77a86ed6b26` |
| 17 | `def` | [DyadicParityMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/dyadicparitymertenssquarerootenergy--4face763fc759bd416eeebf7.md) | 255 | `declaration-track:4face763fc759bd416eeebf743a7ae8fc2e96091d8c7399ac24e2e4ebf445d2e` |
| 18 | `def` | [DyadicOrdinaryMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/dyadicordinarymertenssquarerootenergy--449b738e5d0839540f9e1445.md) | 265 | `declaration-track:449b738e5d0839540f9e1445d792ee582c6329780e13543a76a0d7ce1bb9532f` |
| 19 | `theorem` | [ordinaryMertensSquareRootEnergy_of_parity](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/ordinarymertenssquarerootenergy-of-parity--7c6ce303088821c948895f02.md) | 276 | `result-track:7c6ce303088821c948895f02a1541bbb41bcbd766e2131dd00cf87a326fcf076` |
| 20 | `def` | [DyadicNaturalScaleZeroModeParityFourierBudget](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/dyadicnaturalscalezeromodeparityfourierbudget--9b4ca0f9e25544802565679f.md) | 290 | `declaration-track:9b4ca0f9e25544802565679ff044ae9af04981580c6fee1230fb5e7a958f25b8` |
| 21 | `def` | [DyadicNaturalScaleNonzeroParityFourierBudget](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/dyadicnaturalscalenonzeroparityfourierbudget--fe339316a816e2b3a73ccdb1.md) | 299 | `declaration-track:fe339316a816e2b3a73ccdb175041d6f09b9fae393cbbf223e330fc91ec20956` |
| 22 | `theorem` | [zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/zeromodeparityfourierbudget-of-paritymertenssquarerootenergy--906614f974d50eb9945c23c9.md) | 309 | `result-track:906614f974d50eb9945c23c90ceb6588daea19c501642cafd7f0dff20c5d4525` |
| 23 | `theorem` | [parityFourierQuadraticBudget_of_zero_and_nonzero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/parityfourierquadraticbudget-of-zero-and-nonzero--7cbd10fa096b518a6a70c2a4.md) | 380 | `result-track:7cbd10fa096b518a6a70c2a48d4c430659aefdbba5088a9890f65d014d35ace0` |
| 24 | `theorem` | [naturalScaleCongruenceL1_of_zero_and_nonzero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/naturalscalecongruencel1-of-zero-and-nonzero--9dc4287bde24cc12cc08d606.md) | 394 | `result-track:9dc4287bde24cc12cc08d6060b3ae7b048995d06f2f6564205380bfd06d4d1a9` |
| 25 | `theorem` | [naturalScaleCongruenceL1_of_parityMertens_and_nonzero](../../../../mathematics/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/declarations/naturalscalecongruencel1-of-paritymertens-and-nonzero--65a756b49d4dfb62b72a638b.md) | 403 | `result-track:65a756b49d4dfb62b72a638bb66d0b963dc85e2c9175b9b35a24bd738bf11d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
