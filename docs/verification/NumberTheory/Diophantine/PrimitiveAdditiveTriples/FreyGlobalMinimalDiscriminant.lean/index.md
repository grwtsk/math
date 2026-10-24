# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728e97ca9cdd31b64e83aa34c364577f81e4d104",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728e97ca9cdd31b64e83aa34c364577f81e4d104`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitScaleReduction.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstWitness](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/firstwitness--2b16d7dc5ebb8129541f9174.md) | 27 | `declaration-track:2b16d7dc5ebb8129541f91748acbbf2a1c4d915b5a2a23e09c6116b4c8e6906e` |
| 2 | `def` | [evenWitness](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/evenwitness--a62562784b0939315292d5eb.md) | 36 | `declaration-track:a62562784b0939315292d5eba4387b6171c16e35c928336a78585242688e7963` |
| 3 | `def` | [integerModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/integermodel--10bce38136ca61971bebf272.md) | 47 | `declaration-track:10bce38136ca61971bebf272a3fbe105500840a9021f0398cb76963fd9c1be6e` |
| 4 | `theorem` | [integerModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/integermodel-basechange--67b8171fc87ef0b8907be5a4.md) | 55 | `result-track:67b8171fc87ef0b8907be5a4d695f57a1aba7bd452c215701e8201d64f8b6972` |
| 5 | `def` | [localModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/localmodel--f7118ad4b8982014ef72eb8c.md) | 63 | `declaration-track:f7118ad4b8982014ef72eb8c9afec02717d53605371069551c7e4d6513249c07` |
| 6 | `theorem` | [localModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/localmodel-basechange--a700d873503b9606d15815df.md) | 66 | `result-track:a700d873503b9606d15815df3e4df10fc79f62a53b5b092edd69bccd9e102395` |
| 7 | `theorem` | [integral_at_prime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/integral-at-prime--1aaf224e88cf6d267124509a.md) | 74 | `result-track:1aaf224e88cf6d267124509ae4774e87434fd0daf7cb4c8164d191a951984815` |
| 8 | `theorem` | [selected_scale_unit_at_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/selected-scale-unit-at-odd--6851fdbfdf85ebf0761fb9e7.md) | 80 | `result-track:6851fdbfdf85ebf0761fb9e7a94f0c351c77bc3e260fce0a140063a58ca49163` |
| 9 | `theorem` | [minimal_at_prime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/minimal-at-prime--4989dcaa636cd560ff03badb.md) | 94 | `result-track:4989dcaa636cd560ff03badbb9ff60041399d6877e70bdbb50b4d647c5011b7d` |
| 10 | `theorem` | [good_at_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/good-at-odd--036e52b1454b96cdadda5ce0.md) | 103 | `result-track:036e52b1454b96cdadda5ce042259599b8eed9afb850936f7bc2c7b9db3a17f2` |
| 11 | `theorem` | [multiplicative_at_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/multiplicative-at-odd--5fea0a6916cec9e0a7fadcc8.md) | 110 | `result-track:5fea0a6916cec9e0a7fadcc86d03fce77f434c31610a1362565fe598bad0e011` |
| 12 | `theorem` | [selected_minimum_at_prime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/selected-minimum-at-prime--f2dfde68527ab4838b80e4af.md) | 117 | `result-track:f2dfde68527ab4838b80e4af4c28096b81fc65912b4eaae16586d94196561dbc` |
| 13 | `def` | [removedFactor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/removedfactor--f70fd09670b1c8c562000ede.md) | 123 | `declaration-track:f70fd09670b1c8c562000edec77f5d2a333a94c148b9f6c30c4e36c6153a4421` |
| 14 | `theorem` | [removedFactor_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/removedfactor-pos--3233a9660a2234e51b76c556.md) | 125 | `result-track:3233a9660a2234e51b76c55664ddc4e79c846e69d59852abcb97fbcea2bdcec4` |
| 15 | `theorem` | [integer_delta_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/integer-delta-balance--5a149aab1962604ecf5e808b.md) | 130 | `result-track:5a149aab1962604ecf5e808b3d74e1e15bff0177069928f8fba7c063491a5437` |
| 16 | `theorem` | [integer_delta_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/integer-delta-pos--9e7fedecf76c0f7dae493fc9.md) | 141 | `result-track:9e7fedecf76c0f7dae493fc95abc5c8b8cf40f9d12651cc608eb7bb8ddf0533f` |
| 17 | `def` | [minimalDiscriminant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/minimaldiscriminant--3c9ce2c0955e9a378182971e.md) | 154 | `declaration-track:3c9ce2c0955e9a378182971e8f19747636eb5e7fc1b5b9e07e25b6989ec7adc4` |
| 18 | `theorem` | [minimalDiscriminant_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/minimaldiscriminant-pos--e289aff3bea6002f15eba635.md) | 156 | `result-track:e289aff3bea6002f15eba6354aa03967e4ac26aa608e59e42ab0241af35b88fb` |
| 19 | `theorem` | [minimalDiscriminant_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/minimaldiscriminant-cast--659eae8554a8b2e5d38d6127.md) | 159 | `result-track:659eae8554a8b2e5d38d6127ef44a595ef1673b504fad9fc8b65feccab20e39e` |
| 20 | `theorem` | [selected_delta_nat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/selected-delta-nat--dca067a21cce9fbfa7e74b9a.md) | 163 | `result-track:dca067a21cce9fbfa7e74b9ab6372aa59aa05b5791a465e31e2236b4acbf3118` |
| 21 | `def` | [discriminantIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminantideal--cd1d6df5804a78aafafd4265.md) | 169 | `declaration-track:cd1d6df5804a78aafafd42657b29d9d0f9b4fbdd154b4e1885e88e2f658fee20` |
| 22 | `theorem` | [discriminantIdeal_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminantideal-eq--8f47e49c436f894ea4fb24d9.md) | 172 | `result-track:8f47e49c436f894ea4fb24d976a98cd41dcb204d03a1662206841e8d1dd9fc6f` |
| 23 | `theorem` | [discriminantIdeal_ne_bot](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminantideal-ne-bot--c3b9f68c98ccc054df2d9ae8.md) | 176 | `result-track:c3b9f68c98ccc054df2d9ae8ae70dc91419a96bc1ace9c108975b8606c7a6e77` |
| 24 | `theorem` | [factorization_eq_minimum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/factorization-eq-minimum--d7253e1d54d5ac2140119d47.md) | 182 | `result-track:d7253e1d54d5ac2140119d473ac02509a805433d423135df1405c6979afc0de9` |
| 25 | `theorem` | [discriminant_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminant-balance--a3df40294c94732f10e67f8e.md) | 194 | `result-track:a3df40294c94732f10e67f8eecddad66a23fdb84f46da35ed36419445324dbc5` |
| 26 | `theorem` | [discriminant_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminant-formula--c84937fc4a43183c664d550c.md) | 201 | `result-track:c84937fc4a43183c664d550cb55adab07ea33ab348a0fdc1f1afe42354fa1de4` |
| 27 | `theorem` | [discriminant_is_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminant-is-square--506390873106c2274b3f05e2.md) | 221 | `result-track:506390873106c2274b3f05e2d85131d609c473d2a73336c1a8cc500492a10ca6` |
| 28 | `theorem` | [discriminant_size_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/discriminant-size-bounds--39f6d3c05089df04d6b8b70a.md) | 231 | `result-track:39f6d3c05089df04d6b8b70ace6681e7fbd956e29285366e38e7ddc35a85633a` |
| 29 | `theorem` | [factorization_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/factorization-balance--62a7570d7455251bcbc6e8fb.md) | 239 | `result-track:62a7570d7455251bcbc6e8fb13d0eb70e376a632cc36752a4d5cbc2de47828d5` |
| 30 | `theorem` | [odd_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/odd-depth--3e3b504e321258918f6e2042.md) | 259 | `result-track:3e3b504e321258918f6e2042fddf65cf48d69b47e6b5a47a9656709c0fba040e` |
| 31 | `theorem` | [two_depth_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/two-depth-balance--d235cac42289978dc7ee33ac.md) | 264 | `result-track:d235cac42289978dc7ee33ac98aa28d679424e366bbe3312465db84c2fcf61db` |
| 32 | `theorem` | [prime_dvd_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/prime-dvd-iff--9f3c5de5500f235ee779e8e9.md) | 270 | `result-track:9f3c5de5500f235ee779e8e9b1dd73581c32fe9fccdbf1dd49c1f26c4c771dac` |
| 33 | `theorem` | [support_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/support-formula--93da2f62577409e3ce4c657f.md) | 286 | `result-track:93da2f62577409e3ce4c657f9102aed77a5a9a11986c089c6e12976ff6307220` |
| 34 | `theorem` | [logarithmic_budget](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/declarations/logarithmic-budget--cb88165a964ce7c911d9e217.md) | 313 | `result-track:cb88165a964ce7c911d9e217df1e37cbeff7c1bdb1b83c96607d654240582b7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
