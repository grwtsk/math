# GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.WeightedFiniteReflection

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bde4095259dfca0b25519323409d43125a8eab91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vec](declarations/vec--7b2a68c7b79258c4fd707ace.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Weights](declarations/weights--7d27c585b15962c7026dbd0c.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pairing](declarations/pairing--1b58049158e0b97850fe2a96.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [energy](declarations/energy--085fbc1ddf3dbb76fc9452cd.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [weightedMean](declarations/weightedmean--bfd9dab388840cb814563a20.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [projector](declarations/projector--15528b370181edadd3112fe9.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [diffuse](declarations/diffuse--d27edadde7d6b6eddf1ac99a.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sign](declarations/sign--435b9646a53b82df628c4ce1.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [phase](declarations/phase--58933be3eb79e0089d7ec501.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step--1688aab1d41b0e287007c494.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [inverseStep](declarations/inversestep--3d3497eef6880ef1c49eb580.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pairing_symm](declarations/pairing-symm--797c2081395ab85edcdca48c.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairing_add_left](declarations/pairing-add-left--19f81c6b41717355b218098a.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairing_sub_left](declarations/pairing-sub-left--ae2c91f6a0e5d8b5f7ffae8f.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairing_scale_left](declarations/pairing-scale-left--0c510b5ca4d41b2989ff33c4.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pairing_add_right](declarations/pairing-add-right--f2b3716387b7d7886e71eab6.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pairing_scale_right](declarations/pairing-scale-right--1e8e0c9f95fd0018825b234c.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pairing_self](declarations/pairing-self--f1fbb03521815af9317e23e6.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [energy_nonneg](declarations/energy-nonneg--cd98866e1c2c9f3b06feeb2b.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [energy_eq_zero_iff](declarations/energy-eq-zero-iff--4fc30cc54abb4b0315ac9b3f.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pairing_pos_def](declarations/pairing-pos-def--838323d8e74048d709cb92a0.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weightedMean_add](declarations/weightedmean-add--a8d4aab1d2783db6072d6944.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weightedMean_sub](declarations/weightedmean-sub--fd60a39e472be50a50b0c51c.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weightedMean_scale](declarations/weightedmean-scale--a9ed42201947f70d64c89265.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedMean_const](declarations/weightedmean-const--291edd72ffb7477266ae4c7c.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weightedMean_projector](declarations/weightedmean-projector--21bbaaca778db0f8e4d0d496.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weightedMean_diffuse](declarations/weightedmean-diffuse--bee8adf1ba27c4b67f12abef.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [projector_add](declarations/projector-add--bc22484afb182f7ae58b8e46.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [projector_scale](declarations/projector-scale--adc76f32da6bbf29018d5933.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [diffuse_add](declarations/diffuse-add--2ad3738fe4ca9a79d738f03b.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [diffuse_scale](declarations/diffuse-scale--b946d7cb873eaceea3357e79.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [projector_idempotent](declarations/projector-idempotent--9ef06c90374765e1c8852d70.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [projector_pairing](declarations/projector-pairing--844afad840adab55a304401e.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [projector_selfAdjoint](declarations/projector-selfadjoint--9a7dd20e500a3bee63ce39e2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [diffuse_pairing](declarations/diffuse-pairing--4bb76941b066a26440c3edb0.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [diffuse_selfAdjoint](declarations/diffuse-selfadjoint--94527fc64d2278b5d7712e22.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [diffuse_involutive](declarations/diffuse-involutive--a6f322d2f19e2dc5bad49023.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [diffuse_leftInverse](declarations/diffuse-leftinverse--7c1e12a2f9ee0ca0dd446800.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [diffuse_rightInverse](declarations/diffuse-rightinverse--6209b989e1fb3e646b50b4d2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [diffuse_bijective](declarations/diffuse-bijective--36a9c6c9b3be8b881a58963a.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [diffuseEquiv](declarations/diffuseequiv--58b2ec6bee7834d5d0f84b62.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [diffuse_energy](declarations/diffuse-energy--ab22d3648399c8cda1921b49.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sign_mul_self](declarations/sign-mul-self--64f8b94449bccfc49b3f815e.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [phase_involutive](declarations/phase-involutive--9899a063a08a5382de48b7d9.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [phase_add](declarations/phase-add--fd57fae2722bbe95f23e8308.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [phase_scale](declarations/phase-scale--2613a44fe9384b821587874c.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [phase_selfAdjoint](declarations/phase-selfadjoint--aa9129320f9fa61e4e972fc9.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [phase_energy](declarations/phase-energy--7299725c98d6f8366bc322c1.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [step_add](declarations/step-add--cb40b662d3f37b4f123eb3ce.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [step_scale](declarations/step-scale--c3e4bd96447a36413760356f.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [step_leftInverse](declarations/step-leftinverse--12f15412d96eebe699871e82.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [step_rightInverse](declarations/step-rightinverse--5dc5ae3c7cce37dc1399e73a.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [stepEquiv](declarations/stepequiv--7236ffc0e5d2608b4b0a7225.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [step_adjoint_inverse](declarations/step-adjoint-inverse--03828b41a958ce0f811f0ed0.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [inverseStep_adjoint](declarations/inversestep-adjoint--3b8c2f3efddb35de0b9087bc.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [step_energy](declarations/step-energy--9e522878a43cd12e0d58ae45.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [uniformFour](declarations/uniformfour--21045b209a6b1149424963c6.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [firstBasis](declarations/firstbasis--8e2762a500e5a70b21322292.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [fourthBasis](declarations/fourthbasis--d8db7121f34fad4c325e26f1.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [lastMarked](declarations/lastmarked--39f9e0e5e5df40a6adefe0ac.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [step_not_selfAdjoint_control](declarations/step-not-selfadjoint-control--0595c95d0cc7160d5404ca32.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [step_not_selfAdjoint](declarations/step-not-selfadjoint--8ee82f602ba0ac153d921016.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
