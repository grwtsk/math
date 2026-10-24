# GRWTSK.LinearAlgebra.SignedOrientationBridge

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/SignedOrientationBridge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dc8b62535efda4d5feffde24df5a0467f53cb0b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/SignedOrientationBridge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalSymmetry](declarations/fundamentalsymmetry--a8ed170b465e3ed023a6252e.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [fundamentalSymmetry_apply](declarations/fundamentalsymmetry-apply--4affb3a10997e2769606a8ec.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fundamentalSymmetry_involutive](declarations/fundamentalsymmetry-involutive--75f59ee7934a27e180e08543.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [positiveEnergy](declarations/positiveenergy--1ca31f71256abc849d3e8a0d.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [signedEnergy](declarations/signedenergy--2cc191f976cc3231813028d6.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [plusEnergy](declarations/plusenergy--792b67ba48f10eca68d744d9.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [minusEnergy](declarations/minusenergy--e524d8038179ded591971c56.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveEnergy_nonneg](declarations/positiveenergy-nonneg--67ed91d396c9b42c7700ca14.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [plusEnergy_nonneg](declarations/plusenergy-nonneg--619d4a3fb8b1bd708e83c04a.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minusEnergy_nonneg](declarations/minusenergy-nonneg--08ad808343422d32e8e4ba4c.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positiveEnergy_eq_plus_add_minus](declarations/positiveenergy-eq-plus-add-minus--22309171997149a1f725b129.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [signedEnergy_eq_plus_sub_minus](declarations/signedenergy-eq-plus-sub-minus--51be654241f3759cd6271661.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [InPlusSector](declarations/inplussector--49c5b0aa57186c9d65b9d495.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [InMinusSector](declarations/inminussector--0eefdaef3df530831bc317e2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [signedEnergy_eq_positiveEnergy_of_plusSector](declarations/signedenergy-eq-positiveenergy-of-plussector--b9b1fc9308fc575d81e868fe.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [neg_signedEnergy_eq_positiveEnergy_of_minusSector](declarations/neg-signedenergy-eq-positiveenergy-of-minussector--7a71f66dc4a084a997cd6f38.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [signedEnergy_nonneg_of_plusSector](declarations/signedenergy-nonneg-of-plussector--9f7fe3270db862a34436e22b.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [signedEnergy_nonpos_of_minusSector](declarations/signedenergy-nonpos-of-minussector--23914e84084d3648e810248e.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [positiveScalar_preserves_strict_negative](declarations/positivescalar-preserves-strict-negative--e06f50e50a21db61561f4001.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [twoSectorMask](declarations/twosectormask--1fe02a93ef413e90f9e973a0.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [negativeSectorFixture](declarations/negativesectorfixture--7f1e9b474c2d4d8660131648.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [negativeSectorFixture_positiveEnergy](declarations/negativesectorfixture-positiveenergy--a75f6cda11dff728e34cec1a.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [negativeSectorFixture_signedEnergy](declarations/negativesectorfixture-signedenergy--a0d71fe112ac7a8caef2d8f0.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [positive_energy_does_not_force_signed_positive](declarations/positive-energy-does-not-force-signed-positive--10f9dfa8b286c574d66a0809.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [OrientationCertificate](declarations/orientationcertificate--114bed4353e3b23af4822e30.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [signed_nonneg_of_sign_eq_one](declarations/signed-nonneg-of-sign-eq-one--ac1d9bfbe0550438d6fadc5e.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [signed_nonpos_of_sign_eq_neg_one](declarations/signed-nonpos-of-sign-eq-neg-one--7603afde14d2645e6b3ee10f.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [negativeSectorCertificate](declarations/negativesectorcertificate--e7eaeef39448e8825fdf4245.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [commonJ_flip_reverses_generator](declarations/commonj-flip-reverses-generator--d29d537d2f5b215fdd32bd64.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
