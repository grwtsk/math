# Verification target: GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeb1c60c78c1a24e232d1c5659715beab8f65c9e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeb1c60c78c1a24e232d1c5659715beab8f65c9e`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots`](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.GCD.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuadraticPlusOnePowerRoot](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticplusonepowerroot--a2282f7302c9e8896b1c7c6c.md) | 36 | `declaration-track:a2282f7302c9e8896b1c7c6c82434b92af394357205b3e7e60eb3440e49b9ce5` |
| 2 | `instance` | [quadraticPlusOnePowerRootFintype](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticplusonepowerrootfintype--c7bffc97a7f4abdce0915e29.md) | 40 | `declaration-track:c7bffc97a7f4abdce0915e2907863cf97d92fa191ab97ef47c42a05203a39513` |
| 3 | `def` | [quadraticLiftCandidate](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcandidate--457e83a27a6c115c6052ee5a.md) | 45 | `declaration-track:457e83a27a6c115c6052ee5a838d7129414e31964503262641c2dc404789dd0f` |
| 4 | `def` | [quadraticLiftQuotient](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftquotient--fcf747a7b37f87a426d15349.md) | 49 | `declaration-track:fcf747a7b37f87a426d15349f68e3bac9259d95923dc86641faa01d615aebf13` |
| 5 | `def` | [QuadraticLiftCoefficient](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcoefficient--4e1fd88a5ade2f79934bec90.md) | 53 | `declaration-track:4e1fd88a5ade2f79934bec9059fb60e7267f368f3c07cc472917b171c863da5c` |
| 6 | `theorem` | [quadraticLiftCandidate_expand](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcandidate-expand--72cda9a98ccdb03b4691ab03.md) | 57 | `result-track:72cda9a98ccdb03b4691ab03ee2b1d2a8d6af0d52314356badbaf2434de62db8` |
| 7 | `theorem` | [quadraticLiftQuotient_decomposition](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftquotient-decomposition--18eec3a598f3643e2c680ab6.md) | 65 | `result-track:18eec3a598f3643e2c680ab67626c30e0d307f8923af2a936e95befc2f5e206a` |
| 8 | `theorem` | [quadraticLiftCandidate_factor](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcandidate-factor--598aa670389e5acf21a4567d.md) | 71 | `result-track:598aa670389e5acf21a4567d56a2a0211a7bae4d90b1db458ad3d6bf2b9d6028` |
| 9 | `theorem` | [quadraticLiftCandidate_root_iff](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcandidate-root-iff--c832d087cc26267b4c978ba7.md) | 81 | `result-track:c832d087cc26267b4c978ba763c35eb7bd82e20558a4988b18cb85e4217bbfb2` |
| 10 | `theorem` | [prime_not_dvd_quadratic_power_root](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/prime-not-dvd-quadratic-power-root--3c5d7d83e2733c078be9f7f4.md) | 93 | `result-track:3c5d7d83e2733c078be9f7f4a9da32bf560145ce5839097da7667d466d933dce` |
| 11 | `theorem` | [oddPrime_two_mul_root_coprime](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprime-two-mul-root-coprime--8169919fc2abf0f0f1f910d6.md) | 107 | `result-track:8169919fc2abf0f0f1f910d657e7b55a135118e44be30c3278731cea20282667` |
| 12 | `theorem` | [quadraticLiftCoefficient_exists](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcoefficient-exists--e0378e4164864d9d9b32aa3b.md) | 123 | `result-track:e0378e4164864d9d9b32aa3ba99cf5ae3ff606dd695a834762f4f2349a3f7b45` |
| 13 | `theorem` | [quadraticLiftCoefficient_unique](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcoefficient-unique--acdef679c5d251a4fd1fc834.md) | 149 | `result-track:acdef679c5d251a4fd1fc8343775fff3a67b993dbcb96d5c2624963c3888ef34` |
| 14 | `theorem` | [quadraticLiftCoefficient_existsUnique](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcoefficient-existsunique--8773d7fba99b4e89a3410a0a.md) | 172 | `result-track:8773d7fba99b4e89a3410a0a83ca329c06e3fbb5bcbe3bd6805198684eff399c` |
| 15 | `def` | [oddPrimeLiftCoefficient](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimeliftcoefficient--2b0250ceeca41f846d80af36.md) | 182 | `declaration-track:2b0250ceeca41f846d80af36e0a5898a71991c192dde573803e26cdaa3838613` |
| 16 | `theorem` | [oddPrimeLiftCoefficient_spec](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimeliftcoefficient-spec--ee2a2e60ccdf15e9fceee633.md) | 189 | `result-track:ee2a2e60ccdf15e9fceee633caa749bf336a7c9c697f4488994fa0a89bd09fdc` |
| 17 | `theorem` | [quadraticLiftCandidate_lt](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticliftcandidate-lt--df840ef5ce0a99c91ed585dd.md) | 199 | `result-track:df840ef5ce0a99c91ed585ddaa164383a430e84c92f3546d689792f6034085d2` |
| 18 | `def` | [oddPrimeLift](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimelift--1454d95c2ceb5c5f007a4ff9.md) | 213 | `declaration-track:1454d95c2ceb5c5f007a4ff98d8406f44666827efda654eb7fb03a3d11583996` |
| 19 | `def` | [reducePowerRoot](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/reducepowerroot--412d225697567de3b12d272d.md) | 230 | `declaration-track:412d225697567de3b12d272d9c178aa1049c6016ad2a5ea2f36d7bc5cc937818` |
| 20 | `theorem` | [oddPrimeLift_mod](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimelift-mod--e31e480fcaae707fee46495b.md) | 255 | `result-track:e31e480fcaae707fee46495bb5a6cf50c5f5afc68d8f3b6bc855474ea5c3b477` |
| 21 | `theorem` | [oddPrimeLift_injective](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimelift-injective--9617c3ca5ced621afefa0ebd.md) | 263 | `result-track:9617c3ca5ced621afefa0ebddeda4668e85efa204b6a3121945109daa54360dc` |
| 22 | `theorem` | [powerRoot_decomposition](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/powerroot-decomposition--aab3ecbdc4dd6d38126ca09c.md) | 275 | `result-track:aab3ecbdc4dd6d38126ca09c2a8b9bb02907200879271665361e37022f381168` |
| 23 | `theorem` | [oddPrimeLift_surjective](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimelift-surjective--c49da66cf7ff89440b80e7f9.md) | 290 | `result-track:c49da66cf7ff89440b80e7f901a904618332f6747b1d981adb5a74aa37cf5556` |
| 24 | `def` | [oddPrimePowerRootEquiv](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/oddprimepowerrootequiv--8ca6ed2246db4047c5578a34.md) | 318 | `declaration-track:8ca6ed2246db4047c5578a346172f363de38b5476b3b7622623cbc99e6a97d21` |
| 25 | `theorem` | [card_powerRoot](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/card-powerroot--d6884400054f1ed81ac148a7.md) | 327 | `result-track:d6884400054f1ed81ac148a756bf2fedfe9f890d878dbd94e9fa1bc88f86409c` |
| 26 | `theorem` | [quadraticPlusOneRootCount_primePower_succ](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/declarations/quadraticplusonerootcount-primepower-succ--70f98527a3d744f152456d83.md) | 334 | `result-track:70f98527a3d744f152456d83edff35a398e4b79e6d4a44fcaa2dcc1b18b33ca6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
