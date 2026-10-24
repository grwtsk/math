# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoprimeObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f588503b27f220eb0bd5d192fcc8c14fa76128a9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f588503b27f220eb0bd5d192fcc8c14fa76128a9`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredCoprimeBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centeredcoprimebilinear--a80e462cc27ffb96d1230df2.md) | 27 | `declaration-track:a80e462cc27ffb96d1230df2134e1903fca4cd87a8120e119ce65388451f4eef` |
| 2 | `def` | [centeredNonCoprimeLowGCDBilinear](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centerednoncoprimelowgcdbilinear--55acd162600c85e4cb4e5b37.md) | 37 | `declaration-track:55acd162600c85e4cb4e5b3718bf1b6d17405fa03f642339105439a0d0e8dc43` |
| 3 | `theorem` | [centeredLowGCDBilinear_eq_coprime_add_nonCoprime](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centeredlowgcdbilinear-eq-coprime-add-noncoprime--2bd6eb9fbed13e8343af200f.md) | 48 | `result-track:2bd6eb9fbed13e8343af200f67b3fcb463691b1cb80ddfd4cd338138b1519bab` |
| 4 | `def` | [centeredDivisibilityTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centereddivisibilitytail--165699d58015a29df41d0a41.md) | 78 | `declaration-track:165699d58015a29df41d0a4100710a3dde9ab205e0cd56e123298239f2f503fe` |
| 5 | `def` | [coprimeMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/coprimemobiussquareexpansion--598e2462917f89450d59467a.md) | 84 | `declaration-track:598e2462917f89450d59467ac1668f9ec0c93c1c550817e34573cc5c974ab0fb` |
| 6 | `def` | [absoluteCoprimeMobiusSquareMajorant](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/absolutecoprimemobiussquaremajorant--f1cd4efa7a2222b23468ec85.md) | 90 | `declaration-track:f1cd4efa7a2222b23468ec85c6a434fb87a400fb0abb3f47d011a8fb4004742c` |
| 7 | `theorem` | [sum_mobius_divisors_eq_coprime_indicator](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/sum-mobius-divisors-eq-coprime-indicator--b876fb18e4593322538a9bfa.md) | 96 | `result-track:b876fb18e4593322538a9bfafdf5530a838e2556428ac367ecfcdef18465475a` |
| 8 | `theorem` | [sum_mobius_common_divisors_eq_coprime_indicator](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/sum-mobius-common-divisors-eq-coprime-indicator--b7f84f9519f7b6cd8b19b0a1.md) | 117 | `result-track:b7f84f9519f7b6cd8b19b0a1d804a3a399ca856144582fa48d09d5148ecb906a` |
| 9 | `theorem` | [centeredCoprimeBilinear_eq_mobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centeredcoprimebilinear-eq-mobiussquareexpansion--d6475705650407e0ef37d0b7.md) | 154 | `result-track:d6475705650407e0ef37d0b7137c125838cbd9ec3319232f5da668368743357e` |
| 10 | `theorem` | [centeredDivisibilityTail_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centereddivisibilitytail-one--e5010530e5a4beecac2eb7af.md) | 271 | `result-track:e5010530e5a4beecac2eb7af360b6f9f1d0c2ccf9a4a9f21c4e2a4605c9f5c63` |
| 11 | `theorem` | [centeredCoefficientMass_sq_le_absoluteCoprimeMajorant](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centeredcoefficientmass-sq-le-absolutecoprimemajorant--15129a83c4cf4a0e265b6b05.md) | 280 | `result-track:15129a83c4cf4a0e265b6b056043036c884aedeaacbb46dc44e5ffc3909eb525` |
| 12 | `theorem` | [weighted_vonMangoldt_sub_one_sq_le_absoluteCoprimeMajorant](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/weighted-vonmangoldt-sub-one-sq-le-absolutecoprimemajorant--2bf9d2bd82a8ffd331219e38.md) | 305 | `result-track:2bf9d2bd82a8ffd331219e38bedffa83a6d494ecbcdfb7593f13ecd1929202b8` |
| 13 | `theorem` | [centeredCoprimeBilinear_le_absoluteMajorant](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/declarations/centeredcoprimebilinear-le-absolutemajorant--aca1f226ba7b5ddeff449360.md) | 318 | `result-track:aca1f226ba7b5ddeff449360e398bb6f084e73f17395da910e049d45353f0050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
