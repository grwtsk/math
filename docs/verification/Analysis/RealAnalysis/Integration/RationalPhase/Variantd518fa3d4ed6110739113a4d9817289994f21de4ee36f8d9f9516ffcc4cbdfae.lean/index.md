# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RationalPhase.Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab643184c40222d8993405ae33a9f122f367e303",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab643184c40222d8993405ae33a9f122f367e303`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/planecode--9995766145e7b08bb8df976b.md) | 35 | `declaration-track:9995766145e7b08bb8df976b053c5e6e0dc3b35c838ca0e3d7085687a795205b` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/encode--be204e143ba4738f747d25ac.md) | 45 | `declaration-track:be204e143ba4738f747d25ac810788f99a1bfb83c0cbe40585760021f0f12214` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/interpret--a776922e0d21240403062c19.md) | 49 | `declaration-track:a776922e0d21240403062c19a9f11c146af36bd2530c750e1b6ddd2b2daed73b` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/supported--22a62d41c2d51b53bed02196.md) | 53 | `declaration-track:22a62d41c2d51b53bed0219675956bb2c44fdd76a8bb4302531cfde7f8bdc557` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/coefficients--7f566fded278d6b98054d85a.md) | 56 | `declaration-track:7f566fded278d6b98054d85ab8ea598c3f4e59e2116a19aefc6ebbb573057674` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation--63578b753ceef9a887c98a92.md) | 60 | `declaration-track:63578b753ceef9a887c98a92e66697827080444624146cbc1d1ec3c7c0a049dd` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/move--907f7fe734fde18cf53ab33f.md) | 65 | `declaration-track:907f7fe734fde18cf53ab33fa457b056e0eb5db9265e0e14a9eef1841ede8225` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation-eq-coefficients--96075428bc25255f50dc89b6.md) | 72 | `result-track:96075428bc25255f50dc89b6742446c65623ba95ecd11a91918aa9e4e0d2914a` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/interpret-encode--a861cc4d3c24faf48f933b4c.md) | 81 | `result-track:a861cc4d3c24faf48f933b4caed658ba06cd0ebb6cd7939520cf1b82a1510ac3` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/interpret-move--b481fc8195f3b8b7da6fa9ee.md) | 85 | `result-track:b481fc8195f3b8b7da6fa9eec730aebb17faacc99ad588c308a25f19b65e900d` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/interpret-move-encode--35910b4b91184e4d65da9066.md) | 91 | `result-track:35910b4b91184e4d65da906639d2a7a3e5063945e343ade952df73166d802db1` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/quadratic--40cea23a77caec224fd5a758.md) | 96 | `declaration-track:40cea23a77caec224fd5a75836e0e58d3b83ce9156580998b04ad2e687ff1d5e` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation-quadratic--dbc254b9b5898f4134435f43.md) | 99 | `result-track:dbc254b9b5898f4134435f4388ebb4528f30df848ad4d05a20451b3ac4761ca5` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/move-quadratic--fe0dca2025d40ab860041826.md) | 107 | `result-track:fe0dca2025d40ab86004182645db7dfeb0734946cda8681cdb16bd4a351160c9` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/reflection--582d681994289d877026f038.md) | 112 | `declaration-track:582d681994289d877026f038b8f50b5d22af14133f22e4cc36afae41fb721c14` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/reflection-sq--cb18ffcd6e1818483b8e6882.md) | 116 | `result-track:cb18ffcd6e1818483b8e6882825c1c58c760c7555ac518b046261c96c9b0f626` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/reflection-reversal--03ca823c19b1641646d8c113.md) | 120 | `result-track:03ca823c19b1641646d8c113c9c6abc040de334f2699c6a88e8bc61315fc5e9e` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation-inverse--eb6c0a0b3a95b3ed7d24f754.md) | 126 | `result-track:eb6c0a0b3a95b3ed7d24f754c67c64a722316bf746e6f648925e1e370e208c18` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phasereflection--7e65705ca8fd56e03460c71c.md) | 133 | `declaration-track:7e65705ca8fd56e03460c71c0da76e30c3e7481244bf12bd7847bca948fc24ba` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phasereflection-sq--082912559cd890c6ac0aa7a9.md) | 137 | `result-track:082912559cd890c6ac0aa7a90d4cf06809ca0b8f9a9b36f8ddccc983dfa4a433` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/coefficients-one--c91ea810dc43145b5a9a0e85.md) | 147 | `result-track:c91ea810dc43145b5a9a0e85d85c8a3ed3639207c6d0cdadda9850a4f38823f7` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation-one--ae34165abea8f0eabb38f59c.md) | 151 | `result-track:ae34165abea8f0eabb38f59ca709f025954dd3c1101290e58bfa119906cffc5a` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/integralat--3453d12c50b49a03faefec09.md) | 165 | `declaration-track:3453d12c50b49a03faefec096834cb870a2b40219c1814bf72a4740f02fc04a2` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/integralvector--503399e9514340fd68f7e1be.md) | 169 | `declaration-track:503399e9514340fd68f7e1be2b545c0edc4840eb7ea1c19a7e13ad8be579e4c9` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/operation-integral--93704082143177e96688f6d9.md) | 172 | `result-track:93704082143177e96688f6d9eda3dc394de725ae111675cfc99eafa27cafd79d` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/integralat-iff-preserves-integral--49081f185f269017aad98f81.md) | 189 | `result-track:49081f185f269017aad98f816b1fd941aa4498dc79979964a5c9cabb435cc5fd` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/instance--c60980c30039e6f27ea8cd98.md) | 203 | `declaration-track:c60980c30039e6f27ea8cd98f81a63cebd4fd6596ae860b76471748fd5a25459` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/instance--a7c7567bf3095a0e5abe37f6.md) | 204 | `declaration-track:a7c7567bf3095a0e5abe37f6d49dbb5b2cdb787b073506ae7f56b249d03adcc3` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/coefficients-two-rat--090add81e65409f8b57c6480.md) | 207 | `result-track:090add81e65409f8b57c6480acff90b2fe95bc8c9b60044488c4d8ce1910bf48` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-two-supported-five--75b9447d8de92ff1d36cf38e.md) | 212 | `result-track:75b9447d8de92ff1d36cf38e961e208761aaaebb1443c6dc5516940ecfafcf64` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/coefficients-two-five-diagonal-norm--b41a7428b2e36d5316ba6546.md) | 216 | `result-track:b41a7428b2e36d5316ba65462e2fbd2cf5999ec0fc62df6922416deac6531b6b` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-two-five-not-integral--c09d21267b4b138ab3383774.md) | 227 | `result-track:c09d21267b4b138ab3383774c2fbdef3cde6c03895c63d812a7e27508ce5e5f6` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-two-not-supported-mod-five--db58aa23a3ac72dd066c7fbf.md) | 234 | `result-track:db58aa23a3ac72dd066c7fbf74833fcc9e8d75ad5d59e2a1161c0344644fa7ac` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-one-not-supported-mod-two--7c51a6bec7006fea125e9405.md) | 239 | `result-track:7c51a6bec7006fea125e9405b4654571009360a72436a2e98847d0b96d38bed8` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-one-supported-two--7923153984331f21a0fd1afb.md) | 244 | `result-track:7923153984331f21a0fd1afb9d3f44477849c3fb7b218b79472dc5f56d4cfcdd` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-one-two-denominator-norm--fedb8b000375472c19b6cdf5.md) | 248 | `result-track:fedb8b000375472c19b6cdf55e3cda683cf75d18a286f317e74525ce99c040a0` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-one-two-integral--f130bf18600a7f19d616debd.md) | 253 | `result-track:f130bf18600a7f19d616debd22e7d32ea442c60ed5b0312df7f068d390abdd69` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-two-five-basis-nonintegral--4d7b94228fce13facfd2aaa7.md) | 260 | `result-track:4d7b94228fce13facfd2aaa708ad34d1abde322007edec326968a71345b27eb8` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantd518fa3d4ed6110739113a4d9817289994f21de4ee36f8d9f9516ffcc4cbdfae.lean/declarations/phase-one-two-preserves-integral--d5142fa20e6d67e70f29956c.md) | 266 | `result-track:d5142fa20e6d67e70f29956ceb80546016c97274c27b36bfc5870c0525c1ddb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
