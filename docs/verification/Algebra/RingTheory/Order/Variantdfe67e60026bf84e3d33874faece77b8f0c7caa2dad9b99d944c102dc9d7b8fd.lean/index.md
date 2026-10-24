# Verification target: GRWTSK.Algebra.RingTheory.Order.Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dafeee80a6c1ee03eb057f79499cfb8d9be6cd79",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dafeee80a6c1ee03eb057f79499cfb8d9be6cd79`.

Source path: `GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_coeff_ne_zero_iff_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/exists-coeff-ne-zero-iff-ne-zero--ddafe647c982ae433cd4107f.md) | 43 | `result-track:ddafe647c982ae433cd4107f705f2f8d18c73618e8b6232cf51a5a1d4354d87d` |
| 2 | `def` | [order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order--3816ccbc805d7649caefc6ba.md) | 50 | `declaration-track:3816ccbc805d7649caefc6ba7886319a2a541a8423ff82f5bfbbb1219d57aea2` |
| 3 | `theorem` | [order_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-zero--52c10d88af98435a658f769c.md) | 57 | `result-track:52c10d88af98435a658f769ca74149aa03ff9c08d643ed54ffb82fffdeeb6427` |
| 4 | `theorem` | [order_finite_iff_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-finite-iff-ne-zero--92ff03796459eb9cb0ebd0be.md) | 60 | `result-track:92ff03796459eb9cb0ebd0be5218cf221d465cfdf8b769b8f095bcf9c9274db4` |
| 5 | `theorem` | [order_eq_top](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-eq-top--f9c8ae31cf432bd19da29001.md) | 66 | `result-track:f9c8ae31cf432bd19da290018c92f945ec5d27a8b97874e25d645c09d150815c` |
| 6 | `theorem` | [coe_toNat_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coe-tonat-order--7f46fe23164165158c658839.md) | 69 | `result-track:7f46fe23164165158c65883927591c9e1a72ea0f9ec9462e1077fabee847bf9c` |
| 7 | `theorem` | [coeff_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-order--1b23bf15b7b9f7872b43217f.md) | 74 | `result-track:1b23bf15b7b9f7872b43217f2cbc40d3a457a3ad4d34f302e0f8b2e9e8898551` |
| 8 | `theorem` | [order_le](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-le--9aaabe4afa4c0b93c1a2b379.md) | 82 | `result-track:9aaabe4afa4c0b93c1a2b37950fc6dfc265b1b54052cdece12564bc95878e628` |
| 9 | `theorem` | [coeff_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-of-lt-order--77a5f37428aa6b119543c263.md) | 90 | `result-track:77a5f37428aa6b119543c2636bbd5f974958fd51c1381a09396d4fe103ac69bb` |
| 10 | `theorem` | [coeff_of_lt_order_toNat](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-of-lt-order-tonat--301d6d21c6f252d299efd542.md) | 94 | `result-track:301d6d21c6f252d299efd542498b12c2f6fcb1ed10c2e1707e8c3e0182be38af` |
| 11 | `theorem` | [nat_le_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/nat-le-order--f2b7a3cccfeed5876d9ddba5.md) | 102 | `result-track:f2b7a3cccfeed5876d9ddba5204c19ceb0a068eac0bd3059c38af08b5d2dcf61` |
| 12 | `theorem` | [le_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/le-order--9965db041f817711eb91891d.md) | 111 | `result-track:9965db041f817711eb91891d834f8a41b7190024d80aebb2b62143b539d73b36` |
| 13 | `theorem` | [order_eq_nat](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-eq-nat--91dc65ea15eebcf8fbb4ca19.md) | 121 | `result-track:91dc65ea15eebcf8fbb4ca1906f26ed2239c7e3ed687dc462f439977ffb91e8b` |
| 14 | `theorem` | [order_eq](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-eq--85ce9ebf17b73eac0a7e4ebb.md) | 130 | `result-track:85ce9ebf17b73eac0a7e4ebba416ba66291d3d91abd2ed305dd9cae9a3c4bb6c` |
| 15 | `theorem` | [min_order_le_order_add](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/min-order-le-order-add--5cff79c01018d090dd488ba7.md) | 139 | `result-track:5cff79c01018d090dd488ba73bb3075c8da361f621d4096e996b67a6e4567e24` |
| 16 | `theorem` | [order_add_of_order_eq.aux](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-add-of-order-eq-aux--0e134cdd89e8798c93f9dc2c.md) | 145 | `result-track:0e134cdd89e8798c93f9dc2cdf0b7202a668c5c899b51da8f8140b6cf2c94f31` |
| 17 | `theorem` | [order_add_of_order_eq](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-add-of-order-eq--1a4c963024eef05bcd710f16.md) | 162 | `result-track:1a4c963024eef05bcd710f1661caf54bf1b081784daa701d922f5019e3e5553c` |
| 18 | `theorem` | [le_order_mul](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/le-order-mul--bb8e0e8489e7fca15d20688b.md) | 171 | `result-track:bb8e0e8489e7fca15d20688b146c6371eeee67d76dc2d765e78afcd498300ee6` |
| 19 | `theorem` | [le_order_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/le-order-pow--1370aee23bf5182332082cdb.md) | 184 | `result-track:1370aee23bf5182332082cdb7be3cc230dc0aadab495320de8f6c73884019f0d` |
| 20 | `theorem` | [order_monomial](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-monomial--3ae807cd1770ba46fc5ac4f0.md) | 195 | `result-track:3ae807cd1770ba46fc5ac4f043d59cbf29fe25aafb2134a8a64a8b9006959abe` |
| 21 | `theorem` | [order_monomial_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-monomial-of-ne-zero--dd5112885c927db1336a0bff.md) | 208 | `result-track:dd5112885c927db1336a0bff9d5c88743078d084088527dc15e83f3d6fcacf5a` |
| 22 | `theorem` | [coeff_mul_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-mul-of-lt-order--6d3a744afa86a280c629025a.md) | 214 | `result-track:6d3a744afa86a280c629025add1069a0cec8cbd3358db785159cb5280bf89863` |
| 23 | `theorem` | [coeff_mul_one_sub_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-mul-one-sub-of-lt-order--c506cf3ca377ec190c4870a3.md) | 225 | `result-track:c506cf3ca377ec190c4870a3f3346c73c90740b41b2386fafc795ff52deaf72b` |
| 24 | `theorem` | [coeff_mul_prod_one_sub_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-mul-prod-one-sub-of-lt-order--334c43fe763036edde7748d5.md) | 229 | `result-track:334c43fe763036edde7748d5c6f3e5ffad64de11aa621d5c881c8ddb9597f9c8` |
| 25 | `def` | [divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/divxpoworder--0ed4852dadc91a80599f556c.md) | 243 | `declaration-track:0ed4852dadc91a80599f556c3b402efd9f38ff9c3d5cc141ddee865f816ca659` |
| 26 | `lemma` | [coeff_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/coeff-divxpoworder--80fe1fd8ef63dfea64670b35.md) | 250 | `result-track:80fe1fd8ef63dfea64670b355756539b545023e061ba2e80aa72a19c9a594da0` |
| 27 | `lemma` | [divXPowOrder_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/divxpoworder-zero--7b371df733902087f9d3e176.md) | 255 | `result-track:7b371df733902087f9d3e1769e5cc9b8eec1fc70f09e254558ec6453e1bdd7d5` |
| 28 | `lemma` | [constantCoeff_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/constantcoeff-divxpoworder--2081da7f3a8a4f66d48d96e1.md) | 260 | `result-track:2081da7f3a8a4f66d48d96e17e243301a4bafcd321e854663e7af5d47f8fcc99` |
| 29 | `lemma` | [constantCoeff_divXPowOrder_eq_zero_iff](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/constantcoeff-divxpoworder-eq-zero-iff--6e64340ea07f753db534245e.md) | 264 | `result-track:6e64340ea07f753db534245ed65c94f405e35723076b0fcbcf2613606f5bbafd` |
| 30 | `theorem` | [X_pow_order_mul_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/x-pow-order-mul-divxpoworder--55360c51b329d646c750d273.md) | 270 | `result-track:55360c51b329d646c750d2735598fde1734d7a2fa573e00a2a0e950ca18ed3d7` |
| 31 | `theorem` | [X_pow_order_dvd](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/x-pow-order-dvd--a1c48a1ed9cd3546d096e119.md) | 282 | `result-track:a1c48a1ed9cd3546d096e119bb9c52d3ce3671a8e8a6ee9a76bbc25cc2b8d270` |
| 32 | `theorem` | [order_eq_emultiplicity_X](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-eq-emultiplicity-x--ff2701aafebc8b2d7ba4a0a3.md) | 285 | `result-track:ff2701aafebc8b2d7ba4a0a3924aae689a90ea720f02b8cd5809bdc622749865` |
| 33 | `theorem` | [order_one](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-one--51978692a6ce74e2e16f4839.md) | 318 | `result-track:51978692a6ce74e2e16f4839efa6e3a2d09f468f69dee00d9800ca2a94a16227` |
| 34 | `theorem` | [order_zero_of_unit](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-zero-of-unit--a844513c396e68ef61c1073e.md) | 322 | `result-track:a844513c396e68ef61c1073e736fd787b51963b7820152959a3ea56aea6b618f` |
| 35 | `theorem` | [order_X](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-x--e7aa70805704890f375ae1a0.md) | 330 | `result-track:e7aa70805704890f375ae1a0dd79c276427e85956b8abef2de93460e7c6cf4fd` |
| 36 | `theorem` | [order_X_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-x-pow--941b95abd8b1634906e0421e.md) | 335 | `result-track:941b95abd8b1634906e0421ed403b1950ade05564c3aad8383a9484349f6fd39` |
| 37 | `theorem` | [divXPowOrder_X](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/divxpoworder-x--dcdaf3012c315868bc45b96a.md) | 341 | `result-track:dcdaf3012c315868bc45b96ab5159df4f826cdfe9c7d95d868879e931f55db9b` |
| 38 | `theorem` | [order_mul](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-mul--57a8f97618021eb060cbde1e.md) | 356 | `result-track:57a8f97618021eb060cbde1e8bf80e6d63a1d73ab888718e542ac08ddd333766` |
| 39 | `theorem` | [order_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/order-pow--a708bbc005a92ce243108fd4.md) | 371 | `result-track:a708bbc005a92ce243108fd476b96a2588b68af1ef494db167134dfd2b48ec81` |
| 40 | `theorem` | [divXPowOrder_mul_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/declarations/divxpoworder-mul-divxpoworder--f48f2b1c97ad607b984b757a.md) | 385 | `result-track:f48f2b1c97ad607b984b757a071b68bd9d3c9f1bea7b0f15116080f09958352a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
