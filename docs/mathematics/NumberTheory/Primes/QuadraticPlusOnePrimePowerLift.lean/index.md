# GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeb1c60c78c1a24e232d1c5659715beab8f65c9e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [QuadraticPlusOnePowerRoot](declarations/quadraticplusonepowerroot--a2282f7302c9e8896b1c7c6c.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [quadraticPlusOnePowerRootFintype](declarations/quadraticplusonepowerrootfintype--c7bffc97a7f4abdce0915e29.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [quadraticLiftCandidate](declarations/quadraticliftcandidate--457e83a27a6c115c6052ee5a.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [quadraticLiftQuotient](declarations/quadraticliftquotient--fcf747a7b37f87a426d15349.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [QuadraticLiftCoefficient](declarations/quadraticliftcoefficient--4e1fd88a5ade2f79934bec90.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [quadraticLiftCandidate_expand](declarations/quadraticliftcandidate-expand--72cda9a98ccdb03b4691ab03.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quadraticLiftQuotient_decomposition](declarations/quadraticliftquotient-decomposition--18eec3a598f3643e2c680ab6.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [quadraticLiftCandidate_factor](declarations/quadraticliftcandidate-factor--598aa670389e5acf21a4567d.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [quadraticLiftCandidate_root_iff](declarations/quadraticliftcandidate-root-iff--c832d087cc26267b4c978ba7.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prime_not_dvd_quadratic_power_root](declarations/prime-not-dvd-quadratic-power-root--3c5d7d83e2733c078be9f7f4.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [oddPrime_two_mul_root_coprime](declarations/oddprime-two-mul-root-coprime--8169919fc2abf0f0f1f910d6.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [quadraticLiftCoefficient_exists](declarations/quadraticliftcoefficient-exists--e0378e4164864d9d9b32aa3b.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [quadraticLiftCoefficient_unique](declarations/quadraticliftcoefficient-unique--acdef679c5d251a4fd1fc834.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [quadraticLiftCoefficient_existsUnique](declarations/quadraticliftcoefficient-existsunique--8773d7fba99b4e89a3410a0a.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [oddPrimeLiftCoefficient](declarations/oddprimeliftcoefficient--2b0250ceeca41f846d80af36.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [oddPrimeLiftCoefficient_spec](declarations/oddprimeliftcoefficient-spec--ee2a2e60ccdf15e9fceee633.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [quadraticLiftCandidate_lt](declarations/quadraticliftcandidate-lt--df840ef5ce0a99c91ed585dd.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [oddPrimeLift](declarations/oddprimelift--1454d95c2ceb5c5f007a4ff9.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [reducePowerRoot](declarations/reducepowerroot--412d225697567de3b12d272d.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [oddPrimeLift_mod](declarations/oddprimelift-mod--e31e480fcaae707fee46495b.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [oddPrimeLift_injective](declarations/oddprimelift-injective--9617c3ca5ced621afefa0ebd.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [powerRoot_decomposition](declarations/powerroot-decomposition--aab3ecbdc4dd6d38126ca09c.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [oddPrimeLift_surjective](declarations/oddprimelift-surjective--c49da66cf7ff89440b80e7f9.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [oddPrimePowerRootEquiv](declarations/oddprimepowerrootequiv--8ca6ed2246db4047c5578a34.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [card_powerRoot](declarations/card-powerroot--d6884400054f1ed81ac148a7.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [quadraticPlusOneRootCount_primePower_succ](declarations/quadraticplusonerootcount-primepower-succ--70f98527a3d744f152456d83.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
