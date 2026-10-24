# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitHalfShiftReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef8cbe12fc85e532e9c650074cb5d49d96bcbc32",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef8cbe12fc85e532e9c650074cb5d49d96bcbc32`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityProjectors`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityProjectors.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEvenHalfShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/positiveevenhalfshiftset--f3c538400a043b3072ab07b2.md) | 46 | `declaration-track:f3c538400a043b3072ab07b24fc0133fb4a7339cc0dcc546f64dba94771b2e9f` |
| 2 | `def` | [nonnegativeOddHalfShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/nonnegativeoddhalfshiftset--563eb85281cc15e5f8e2c105.md) | 50 | `declaration-track:563eb85281cc15e5f8e2c105af0e2731c25bfed24cdc7ac22d272e5ed6a5b1c2` |
| 3 | `theorem` | [sum_evenPositiveEndpointShiftSet_eq_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/sum-evenpositiveendpointshiftset-eq-halfshift--c14f9448d83d17f18ea2c76a.md) | 54 | `result-track:c14f9448d83d17f18ea2c76a8f4c2549323c03045c330dd1ff5a6fb09acd3c80` |
| 4 | `theorem` | [sum_oddPositiveEndpointShiftSet_eq_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/sum-oddpositiveendpointshiftset-eq-halfshift--2ec34f86da0a47f0e6ca7860.md) | 91 | `result-track:2ec34f86da0a47f0e6ca78600ad008415035c3af729ff01297ec7b3bf7281ead` |
| 5 | `theorem` | [affineChowlaShiftPhase_two_mul](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/affinechowlashiftphase-two-mul--b16dcd889263fa5184872974.md) | 128 | `result-track:b16dcd889263fa5184872974c861a1846623ac85fe1e2d1908c61f4ebeaf79db` |
| 6 | `theorem` | [affineChowlaShiftPhase_two_mul_add_one](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/affinechowlashiftphase-two-mul-add-one--38e16b18b14586c559275157.md) | 142 | `result-track:38e16b18b14586c559275157cb4036cfafc4f3d4d84de262ffde565a7e5b7c2e` |
| 7 | `def` | [twoKernelEvenHalfShiftAggregate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twokernelevenhalfshiftaggregate--a39baad8baed28c3f8920a2b.md) | 160 | `declaration-track:a39baad8baed28c3f8920a2b37487846885f691336c0d53ab56697fa51b79ef8` |
| 8 | `def` | [twoKernelOddHalfShiftAggregate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twokerneloddhalfshiftaggregate--5a92e418addba5677aa61fe8.md) | 172 | `declaration-track:5a92e418addba5677aa61fe86ac73486b4a75f3b4ddbcded1403f113291ffd62` |
| 9 | `theorem` | [twoKernelEvenShiftAggregate_eq_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twokernelevenshiftaggregate-eq-halfshift--1a15d30f35abdd80a4c97895.md) | 184 | `result-track:1a15d30f35abdd80a4c9789557a3485e89d8ae15dd75c07306a1990544267ce9` |
| 10 | `theorem` | [twoKernelOddShiftAggregate_eq_phase_mul_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twokerneloddshiftaggregate-eq-phase-mul-halfshift--c1f848b74bf750319e7b505c.md) | 198 | `result-track:c1f848b74bf750319e7b505cff2bfa5244cafc4168ce92074e58975bf4d1bf10` |
| 11 | `theorem` | [norm_affineChowlaShiftPhase_one](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/norm-affinechowlashiftphase-one--bc4084f5c5be95f7336c2f97.md) | 214 | `result-track:bc4084f5c5be95f7336c2f97edce6d6cb7b224199d71dd51360aceb28fa53213` |
| 12 | `def` | [twoNonunitEvenHalfShiftOrbitMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitevenhalfshiftorbitmajorant--8123d02a98acb834e909262c.md) | 222 | `declaration-track:8123d02a98acb834e909262c524881b30e6447005ee681002761bbb1074647dc` |
| 13 | `def` | [twoNonunitOddHalfShiftOrbitMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitoddhalfshiftorbitmajorant--82d8b83c9ded9308c8f48f44.md) | 229 | `declaration-track:82d8b83c9ded9308c8f48f447d28f3f6e97acfda89da0ae0fecdc99e4587b987` |
| 14 | `theorem` | [twoNonunitEvenShiftOrbitMajorant_eq_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitevenshiftorbitmajorant-eq-halfshift--82a27b29df21d22690e0eb66.md) | 236 | `result-track:82a27b29df21d22690e0eb6647858d7d8931cd6c6982569915fd616130d9bfdf` |
| 15 | `theorem` | [twoNonunitOddShiftOrbitMajorant_eq_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitoddshiftorbitmajorant-eq-halfshift--fa045e5a139bb17f053fd401.md) | 248 | `result-track:fa045e5a139bb17f053fd401951c0d4fc4388a4016421519b68ae3648e994980` |
| 16 | `def` | [twoNonunitEvenHalfShiftEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitevenhalfshiftendpointmajorant--2fa981e349204211fe617272.md) | 262 | `declaration-track:2fa981e349204211fe617272e198f81d6ef91f32416bc6f05a4044c221e5e02a` |
| 17 | `def` | [twoNonunitOddHalfShiftEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitoddhalfshiftendpointmajorant--b7ce6767b36201b4bec41721.md) | 275 | `declaration-track:b7ce6767b36201b4bec417216a2b1af4ebdd9bdbed8061835b03543ded64534c` |
| 18 | `theorem` | [twoNonunitEvenHalfShiftEndpointMajorant_eq_existing](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitevenhalfshiftendpointmajorant-eq-existing--cb55a0e90675a226652a94ef.md) | 288 | `result-track:cb55a0e90675a226652a94ef50936bf3cee2a7419cafd4187058b28f7bb564f7` |
| 19 | `theorem` | [twoNonunitOddHalfShiftEndpointMajorant_eq_existing](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/twononunitoddhalfshiftendpointmajorant-eq-existing--7dce6e5ea46733e35474e643.md) | 309 | `result-track:7dce6e5ea46733e35474e643f43f3d36bfa547d249fffbf886cde0a1b86495bf` |
| 20 | `def` | [DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/dyadicnaturalscaletwononunitevenhalfshiftbudget--dc80b6db5ff794d88994df6b.md) | 330 | `declaration-track:dc80b6db5ff794d88994df6bc0a63adb1fb697f0eb60577fb751b6a75c71014b` |
| 21 | `def` | [DyadicNaturalScaleTwoNonunitOddHalfShiftBudget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/dyadicnaturalscaletwononunitoddhalfshiftbudget--ec04c30b59760b76af660192.md) | 339 | `declaration-track:ec04c30b59760b76af660192d86651788a68ac791902b8c098b2aea7e9b7e85d` |
| 22 | `theorem` | [dyadicEvenHalfShiftBudget_iff_evenShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/dyadicevenhalfshiftbudget-iff-evenshift--c06edfbf99032faece7bd7f7.md) | 348 | `result-track:c06edfbf99032faece7bd7f7ae3f8c8344990ae026bcba3089efaccf9f85a8b7` |
| 23 | `theorem` | [dyadicOddHalfShiftBudget_iff_oddShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/dyadicoddhalfshiftbudget-iff-oddshift--e39e4a99b82489b3881f6a7f.md) | 366 | `result-track:e39e4a99b82489b3881f6a7ff80ddc5e2b42ea66424553c899830c1f30c6e639` |
| 24 | `theorem` | [regularOrbitBudget_of_evenHalf_and_oddHalf](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/regularorbitbudget-of-evenhalf-and-oddhalf--e50cee3af62d533201c00cd5.md) | 384 | `result-track:e50cee3af62d533201c00cd578840e3ac7a22f5f10c2b74c1a3d9a064dbb4909` |
| 25 | `theorem` | [naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_halfShift](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/naturalscalecongruencel1-of-pointwise-modfour-twounit-halfshift--e6af877880a6158b33f7f9b0.md) | 394 | `result-track:e6af877880a6158b33f7f9b0e54998067b45a61c882f85cf28b2c984b144c13b` |
| 26 | `structure` | [ToTwoNonunitHalfShiftBudgetsAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/totwononunithalfshiftbudgetsadapter--4f447c366becbbdd7f018b24.md) | 407 | `declaration-track:4f447c366becbbdd7f018b24b12df96b7ece376432c272e6b4b23a596b2e2c31` |
| 27 | `structure` | [HalfConductorDescentData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/halfconductordescentdata--a657026906898ace52bed4d0.md) | 417 | `declaration-track:a657026906898ace52bed4d058c53fd97f3c171643c4bdacf1e0118aeb46289f` |
| 28 | `def` | [HalfConductorDescentSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/halfconductordescentsource--a36838bf4c9b2b6cd622d91f.md) | 429 | `declaration-track:a36838bf4c9b2b6cd622d91fcc6639f5459a652cd7e4f3388d40012e685b974a` |
| 29 | `abbrev` | [HalfConductorDescentAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/declarations/halfconductordescentadapter--09cab82ad2036a2a44050536.md) | 441 | `declaration-track:09cab82ad2036a2a440505360917bc3b5ebf473fa52998c77ecd1fc9e04da704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
