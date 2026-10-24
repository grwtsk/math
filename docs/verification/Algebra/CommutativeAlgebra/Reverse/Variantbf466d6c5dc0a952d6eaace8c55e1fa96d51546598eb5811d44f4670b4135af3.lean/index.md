# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Reverse.Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b93c1279c6580109a0e439c9bd019e18f7b7cc04`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.TrailingDegree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.EraseLead` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revAtFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revatfun--b4c6c0694273c6d7af2df496.md) | 36 | `declaration-track:b4c6c0694273c6d7af2df496a45b1348a0598eed352d86fa55a651acbe58b876` |
| 2 | `theorem` | [revAtFun_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revatfun-invol--de4416b1982e3abcc4d8430c.md) | 40 | `result-track:de4416b1982e3abcc4d8430ca0c2adaaa4d481674c9a62439a9af04679eba796` |
| 3 | `theorem` | [revAtFun_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revatfun-inj--96bf087bc5e98fce7206df5c.md) | 50 | `result-track:96bf087bc5e98fce7206df5cf0193cc3f80a0dfaba4d872e04ca7011b01f9b50` |
| 4 | `def` | [revAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat--9cbad511b861ab2bbe95142a.md) | 59 | `declaration-track:9cbad511b861ab2bbe95142aaf903baadb4047811442ef8b38ba793c0a21d69a` |
| 5 | `theorem` | [revAtFun_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revatfun-eq--3af07e0a3fbc221ef2a8c64a.md) | 67 | `result-track:3af07e0a3fbc221ef2a8c64a5c01c5ad84065743a01340906201aadddca4789b` |
| 6 | `theorem` | [revAt_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat-invol--2a385b4687c812ad567cc642.md) | 72 | `result-track:2a385b4687c812ad567cc6425d1627e02e03b0873195675cd6f4b8daf9235530` |
| 7 | `theorem` | [revAt_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat-le--f72b6ba42f6ce37cdb27ff59.md) | 77 | `result-track:f72b6ba42f6ce37cdb27ff59e1c82d3d0849f7e7b9bdfc17d57714a334a240dd` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat-eq-self-of-lt--f4c674d55aaa03a0f9656311.md) | 81 | `result-track:f4c674d55aaa03a0f9656311b1d1ef3c861af2771a88e44fe8a4490b0a888f04` |
| 9 | `theorem` | [revAt_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat-add--2b7d1c3c87cc3ec59dc0fad6.md) | 83 | `result-track:2b7d1c3c87cc3ec59dc0fad62b929ce14c8e4446c150fb355e36611f799627fe` |
| 10 | `theorem` | [revAt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/revat-zero--1da157842ea980420bd2d6e6.md) | 93 | `result-track:1da157842ea980420bd2d6e647f7a71c2704450becc37d970d955edafe7d367b` |
| 11 | `def` | [reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect--deeec20b58ab86777ea54821.md) | 102 | `declaration-track:deeec20b58ab86777ea54821d79fdeacff63b25effa25bc81155899dd38f75d1` |
| 12 | `theorem` | [reflect_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-support--803376c7cfe8a58291a9be9e.md) | 106 | `result-track:803376c7cfe8a58291a9be9e3e7c935ece48060f801a96730572f2f16dac1a62` |
| 13 | `theorem` | [coeff_reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/coeff-reflect--6a4bc5947fb58ad417f1357b.md) | 114 | `result-track:6a4bc5947fb58ad417f1357be0485d457920f8d5be84740b6c536b1ce5d4ad25` |
| 14 | `theorem` | [reflect_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-zero--8f184461db40ed957ee9d180.md) | 124 | `result-track:8f184461db40ed957ee9d1807b4f8f1572f1584b6adaa22281fd2cf9b086282b` |
| 15 | `theorem` | [reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-eq-zero-iff--7583980a9cfaff2558961785.md) | 129 | `result-track:7583980a9cfaff25589617856694aae6d8fe5bf11ede30dae653baf0f9d7bc0f` |
| 16 | `theorem` | [reflect_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-add--9191c9ce7bb1be4f3c8cbad3.md) | 134 | `result-track:9191c9ce7bb1be4f3c8cbad3cc826ddfb38d0fba1a46d0d7854cf640aaf8c629` |
| 17 | `theorem` | [reflect_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-c-mul--7372b5aa545113f74a4f2167.md) | 140 | `result-track:7372b5aa545113f74a4f2167693b1e6fedc32f38e816c802ac7efbda343af7cb` |
| 18 | `theorem` | [reflect_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-c-mul-x-pow--f4e0213661f184db0fb233eb.md) | 147 | `result-track:f4e0213661f184db0fb233eb62d342c563720d94a1f33e32834c0e01e9fd9bf8` |
| 19 | `theorem` | [reflect_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-c--a8b07b71aae079e058956f56.md) | 161 | `result-track:a8b07b71aae079e058956f560c78dfc0a979b574ed5ffa087f442d34cb750d03` |
| 20 | `theorem` | [reflect_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-monomial--55b0caa88de3c2ef3cd188f3.md) | 167 | `result-track:55b0caa88de3c2ef3cd188f3cfbb72414198ec7f10c87b1d659e9b0425c96c79` |
| 21 | `lemma` | [reflect_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-one-x--f41f1220c05b3322eb4fec40.md) | 171 | `result-track:f41f1220c05b3322eb4fec40a2e61bc5e3a7a9311bd1a7daa5d20d4dc16c8180` |
| 22 | `theorem` | [reflect_mul_induction](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-mul-induction--d2b9f5838a051b186a11e615.md) | 174 | `result-track:d2b9f5838a051b186a11e6156f6967ecae9768d4951e87ea04736d730d7d236f` |
| 23 | `theorem` | [reflect_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-mul--9dae4703592554636cf2f768.md) | 213 | `result-track:9dae4703592554636cf2f768df6f2d8cec013f89c4e7b602bedc02e7d063e787` |
| 24 | `theorem` | [eval₂_reflect_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/eval-reflect-mul-pow--fe3ca5785e75f5f856bc7eb7.md) | 222 | `result-track:fe3ca5785e75f5f856bc7eb7497b02edd1dd45d2000e1d14eeb319dfc5bd4a33` |
| 25 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/eval-reflect-eq-zero-iff--35b20ba7f0b60d008e575b59.md) | 236 | `result-track:35b20ba7f0b60d008e575b5974438dcdfddc8f9f3a86468db76b214ead5cae11` |
| 26 | `def` | [reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse--05424d24ff01e62cd6922e19.md) | 251 | `declaration-track:05424d24ff01e62cd6922e19ec44a9385d1bf1856d806b795bc4d1806ec60bb6` |
| 27 | `theorem` | [coeff_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/coeff-reverse--0fe17476e05ea6fef139e67c.md) | 255 | `result-track:0fe17476e05ea6fef139e67c450eae32e48aea0c56ad736d2d7e9714598e78bc` |
| 28 | `theorem` | [coeff_zero_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/coeff-zero-reverse--f2c33b302c988260781b7445.md) | 260 | `result-track:f2c33b302c988260781b7445a2c49ade259158b852dd392180890592cb8446c2` |
| 29 | `theorem` | [reverse_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-zero--14a81d0d3f71ce095ee2dbfd.md) | 265 | `result-track:14a81d0d3f71ce095ee2dbfdfc5c60e8638616ba5293c3754c4bec1117feb869` |
| 30 | `theorem` | [reverse_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-eq-zero--f948197254d4441140f72c95.md) | 270 | `result-track:f948197254d4441140f72c95a2b709b8762de25585e6eccbca908d9f7fc2ff9e` |
| 31 | `theorem` | [reverse_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-natdegree-le--d03bd0cf293d21ee296f1f28.md) | 273 | `result-track:d03bd0cf293d21ee296f1f28f3d6dadb2d0f4d3431a497b0b6511dbb978df414` |
| 32 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree--a80d2dffda43f5eea74848da.md) | 281 | `result-track:a80d2dffda43f5eea74848da7a41e1b3a024d9d09a6280a3cd10ac9a224effc1` |
| 33 | `theorem` | [reverse_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-natdegree--c48a50ced77277cdc47bbf3b.md) | 296 | `result-track:c48a50ced77277cdc47bbf3b35648e68513ae10e8503d3b282d5480f823e8bfa` |
| 34 | `theorem` | [reverse_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-leadingcoeff--caec3979393c76de9ab7b594.md) | 300 | `result-track:caec3979393c76de9ab7b5947bef7db7141de6892ff57241be9a2256a3eac768` |
| 35 | `theorem` | [reverse_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-nattrailingdegree--f461a4f77c70a1a181c1037e.md) | 305 | `result-track:f461a4f77c70a1a181c1037e9bb55f7a677feba32f5779ba820d6061ed11c2e6` |
| 36 | `theorem` | [reverse_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-trailingcoeff--de2ef2aa67be862e58218d5b.md) | 314 | `result-track:de2ef2aa67be862e58218d5b557055329b2ed6c430b5bd3cd935046eabaa3982` |
| 37 | `theorem` | [reverse_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-mul--069bf7ba25af1b3aaeedbf07.md) | 318 | `result-track:069bf7ba25af1b3aaeedbf07449ef5529ad128cf742d6e6cd896207b9bd21178` |
| 38 | `theorem` | [reverse_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-mul-of-domain--86d10eadfa735b0e2c14b53b.md) | 325 | `result-track:86d10eadfa735b0e2c14b53b90a6f3ca3c4f67e7b4c74a34e6856306feb97905` |
| 39 | `theorem` | [trailingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/trailingcoeff-mul--e3cf9ee9c9a28e72f5008216.md) | 334 | `result-track:e3cf9ee9c9a28e72f5008216e8a88a70daaeae454427ab701594ca73d1c808a7` |
| 40 | `theorem` | [coeff_one_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/coeff-one-reverse--704ae838dfc29b99e63adbc1.md) | 341 | `result-track:704ae838dfc29b99e63adbc12a74be4143e9e12906c59659682be3bfdb58250e` |
| 41 | `lemma` | [reverse_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-c--b11caed9907a2866ce1b0030.md) | 350 | `result-track:b11caed9907a2866ce1b0030866cd6af26fa99ae04ec571871248f8878771dee` |
| 42 | `lemma` | [reverse_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-mul-x--0d24ee02ac0b20046a083bd0.md) | 354 | `result-track:0d24ee02ac0b20046a083bd07e2506594af49791e225405aab8357626a09a0af` |
| 43 | `lemma` | [reverse_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-x-mul--6c2d28409f5b73dcfa8e4cee.md) | 360 | `result-track:6c2d28409f5b73dcfa8e4cee460bdb02f183e300013211409c30964b418118f8` |
| 44 | `lemma` | [reverse_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-mul-x-pow--f65c89a18290db5b0f43c26d.md) | 363 | `result-track:f65c89a18290db5b0f43c26df20d61db384172a487f460e0b78c5b697239de95` |
| 45 | `lemma` | [reverse_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-x-pow-mul--3861aaf87f68d3f43269a857.md) | 367 | `result-track:3861aaf87f68d3f43269a857ad7c14f1ca085ec9085f64cd8f3cf358b2d1676f` |
| 46 | `lemma` | [reverse_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-add-c--4f5ef66fe94b8169fddf1c4a.md) | 370 | `result-track:4f5ef66fe94b8169fddf1c4ac08a340eb8f47c0534d4684c31dc4cf0da652430` |
| 47 | `lemma` | [reverse_C_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-c-add--e1fc252c57a08e49ee723b57.md) | 374 | `result-track:e1fc252c57a08e49ee723b5761e6f7734da185530e14bfc0987c3f913e1db97d` |
| 48 | `theorem` | [eval₂_reverse_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/eval-reverse-mul-pow--6ae1d03f5ddf8198c07864a7.md) | 382 | `result-track:6ae1d03f5ddf8198c07864a7c4785ca0907eb7fe1a53d3fa706e05a13eb2c3fe` |
| 49 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/eval-reverse-eq-zero-iff--2c1da45213f7cce59f06c0e4.md) | 388 | `result-track:2c1da45213f7cce59f06c0e4533fcab428fa8c6473f4cf940709ba84cafcf294` |
| 50 | `theorem` | [reflect_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-neg--3deba56e9bda50d64a36e049.md) | 402 | `result-track:3deba56e9bda50d64a36e049d9f67193df83f3cd1e158835f1fbe4f6d41274a7` |
| 51 | `theorem` | [reflect_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reflect-sub--f0330154932cd20ece55ef71.md) | 407 | `result-track:f0330154932cd20ece55ef71927977c375dd4f69a76a8ad492e4ada95aaf8673` |
| 52 | `theorem` | [reverse_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/declarations/reverse-neg--4b649dfdad7ca6ff0974e4a1.md) | 412 | `result-track:4b649dfdad7ca6ff0974e4a1a3b122007d28f22babf4bd0b8553305757a88ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
