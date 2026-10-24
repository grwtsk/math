# Verification target: GRWTSK.LinearAlgebra.SignedOrientationBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dc8b62535efda4d5feffde24df5a0467f53cb0b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/SignedOrientationBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dc8b62535efda4d5feffde24df5a0467f53cb0b`.

Source path: `GRWTSK/LinearAlgebra/SignedOrientationBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/SignedOrientationBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalSymmetry](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/fundamentalsymmetry--a8ed170b465e3ed023a6252e.md) | 41 | `declaration-track:a8ed170b465e3ed023a6252e1e6d8a1d1b5e70451565e1a8e77ce844e8a31e6a` |
| 2 | `theorem` | [fundamentalSymmetry_apply](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/fundamentalsymmetry-apply--4affb3a10997e2769606a8ec.md) | 46 | `result-track:4affb3a10997e2769606a8ec941d66cb917dde9fc03983fdd6a22e76894540d9` |
| 3 | `theorem` | [fundamentalSymmetry_involutive](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/fundamentalsymmetry-involutive--75f59ee7934a27e180e08543.md) | 53 | `result-track:75f59ee7934a27e180e085430bec5a76a212bd5b7cf86d03f811d1677e9fb5f3` |
| 4 | `def` | [positiveEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/positiveenergy--1ca31f71256abc849d3e8a0d.md) | 62 | `declaration-track:1ca31f71256abc849d3e8a0d39af60ee5c91541a8f05bb1423ad463a1225f4f0` |
| 5 | `def` | [signedEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signedenergy--2cc191f976cc3231813028d6.md) | 66 | `declaration-track:2cc191f976cc3231813028d66590096bd89bf99ad360882410f69fa74a9300c8` |
| 6 | `def` | [plusEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/plusenergy--792b67ba48f10eca68d744d9.md) | 70 | `declaration-track:792b67ba48f10eca68d744d9cc1076704228672a31a788cd94a88e4f8fca9361` |
| 7 | `def` | [minusEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/minusenergy--e524d8038179ded591971c56.md) | 74 | `declaration-track:e524d8038179ded591971c56d39529d8b6cde182511839ae343aafd7f9b154d0` |
| 8 | `theorem` | [positiveEnergy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/positiveenergy-nonneg--67ed91d396c9b42c7700ca14.md) | 78 | `result-track:67ed91d396c9b42c7700ca14ee5e343e37f91c45182399a2677d414dd36f1c88` |
| 9 | `theorem` | [plusEnergy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/plusenergy-nonneg--619d4a3fb8b1bd708e83c04a.md) | 82 | `result-track:619d4a3fb8b1bd708e83c04a1343ffbd722c5d345c09e9f96169b1a8626b266b` |
| 10 | `theorem` | [minusEnergy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/minusenergy-nonneg--08ad808343422d32e8e4ba4c.md) | 87 | `result-track:08ad808343422d32e8e4ba4c9044c9f473a493dfa568c275d4c75a2869003578` |
| 11 | `theorem` | [positiveEnergy_eq_plus_add_minus](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/positiveenergy-eq-plus-add-minus--22309171997149a1f725b129.md) | 93 | `result-track:22309171997149a1f725b1295100f33a13c55b7e902d860f109ade5c2482a853` |
| 12 | `theorem` | [signedEnergy_eq_plus_sub_minus](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signedenergy-eq-plus-sub-minus--51be654241f3759cd6271661.md) | 104 | `result-track:51be654241f3759cd6271661be19a51a06a469679cc05c571d937b15e43f22fe` |
| 13 | `def` | [InPlusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/inplussector--49c5b0aa57186c9d65b9d495.md) | 115 | `declaration-track:49c5b0aa57186c9d65b9d495c0b59f178c34d9d46278bdccc8bf58c87b60c38b` |
| 14 | `def` | [InMinusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/inminussector--0eefdaef3df530831bc317e2.md) | 119 | `declaration-track:0eefdaef3df530831bc317e21574f5a45885b28dc734b6c14574d0e161726139` |
| 15 | `theorem` | [signedEnergy_eq_positiveEnergy_of_plusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signedenergy-eq-positiveenergy-of-plussector--b9b1fc9308fc575d81e868fe.md) | 123 | `result-track:b9b1fc9308fc575d81e868fe7b0a5eaca4576aaf2846444ea0711b08e1ca8c1e` |
| 16 | `theorem` | [neg_signedEnergy_eq_positiveEnergy_of_minusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/neg-signedenergy-eq-positiveenergy-of-minussector--7a71f66dc4a084a997cd6f38.md) | 136 | `result-track:7a71f66dc4a084a997cd6f388e5131626f462575e39b1afcb5896c5c320b4aeb` |
| 17 | `theorem` | [signedEnergy_nonneg_of_plusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signedenergy-nonneg-of-plussector--9f7fe3270db862a34436e22b.md) | 148 | `result-track:9f7fe3270db862a34436e22b08102571ed7b0c231e23a4ea8f06e38c1014f9dd` |
| 18 | `theorem` | [signedEnergy_nonpos_of_minusSector](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signedenergy-nonpos-of-minussector--23914e84084d3648e810248e.md) | 155 | `result-track:23914e84084d3648e810248e402254742c4cd83ac70fd7331e36fb9ad63bad0d` |
| 19 | `theorem` | [positiveScalar_preserves_strict_negative](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/positivescalar-preserves-strict-negative--e06f50e50a21db61561f4001.md) | 165 | `result-track:e06f50e50a21db61561f400179cb7b6fdde8cca1a54388cc995b7ecda2cf17b9` |
| 20 | `def` | [twoSectorMask](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/twosectormask--1fe02a93ef413e90f9e973a0.md) | 171 | `declaration-track:1fe02a93ef413e90f9e973a0779cf4955c4005037fa991e6155f231117774215` |
| 21 | `def` | [negativeSectorFixture](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/negativesectorfixture--7f1e9b474c2d4d8660131648.md) | 174 | `declaration-track:7f1e9b474c2d4d8660131648fed6efe3b769d539b2db578b6efe34244a2e0b1a` |
| 22 | `theorem` | [negativeSectorFixture_positiveEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/negativesectorfixture-positiveenergy--a75f6cda11dff728e34cec1a.md) | 176 | `result-track:a75f6cda11dff728e34cec1a0fc670aa07a5c47f15f53f47d32afe2326c33067` |
| 23 | `theorem` | [negativeSectorFixture_signedEnergy](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/negativesectorfixture-signedenergy--a0d71fe112ac7a8caef2d8f0.md) | 180 | `result-track:a0d71fe112ac7a8caef2d8f0350b0b114a2f224214289794bd70f7e47af28b62` |
| 24 | `theorem` | [positive_energy_does_not_force_signed_positive](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/positive-energy-does-not-force-signed-positive--10f9dfa8b286c574d66a0809.md) | 187 | `result-track:10f9dfa8b286c574d66a0809d4da852a0834a18bf2a1a4432ed15f706b9d2c91` |
| 25 | `structure` | [OrientationCertificate](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/orientationcertificate--114bed4353e3b23af4822e30.md) | 197 | `declaration-track:114bed4353e3b23af4822e308683ea1361343b4673aead82da57501260b3caa3` |
| 26 | `theorem` | [signed_nonneg_of_sign_eq_one](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signed-nonneg-of-sign-eq-one--ac1d9bfbe0550438d6fadc5e.md) | 207 | `result-track:ac1d9bfbe0550438d6fadc5e599046db1365e406a2277a481f0ed231b319f84c` |
| 27 | `theorem` | [signed_nonpos_of_sign_eq_neg_one](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/signed-nonpos-of-sign-eq-neg-one--7603afde14d2645e6b3ee10f.md) | 215 | `result-track:7603afde14d2645e6b3ee10fd89417b49f8929611b0892eecdb5c139b98d786e` |
| 28 | `def` | [negativeSectorCertificate](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/negativesectorcertificate--e7eaeef39448e8825fdf4245.md) | 227 | `declaration-track:e7eaeef39448e8825fdf4245afc2803f9c6e61a34047dbc47f09f57ebba5ee7a` |
| 29 | `theorem` | [commonJ_flip_reverses_generator](../../../../mathematics/Algebra/LinearAlgebra/SignedOrientationBridge.lean/declarations/commonj-flip-reverses-generator--d29d537d2f5b215fdd32bd64.md) | 243 | `result-track:d29d537d2f5b215fdd32bd644b48870f798d44f403971a9c6d8efefeb33ba228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
