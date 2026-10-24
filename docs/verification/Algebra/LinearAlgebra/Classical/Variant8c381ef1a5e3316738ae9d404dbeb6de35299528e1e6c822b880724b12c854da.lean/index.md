# Verification target: GRWTSK.Algebra.LinearAlgebra.Classical.Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57ef96e6e03aff24cc5c8a300e4441b5f68e1b9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57ef96e6e03aff24cc5c8a300e4441b5f68e1b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.SkewAdjoint` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SymplecticGroup` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matrix_trace_commutator_zero](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/matrix-trace-commutator-zero--b324e63b8ccf2dc2887960ec.md) | 88 | `result-track:b324e63b8ccf2dc2887960ec3da312a32f977ec69265e9c55091df42774ffb11` |
| 2 | `def` | [sl](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/sl--5fb733fbe6530a355e322571.md) | 98 | `declaration-track:5fb733fbe6530a355e322571b3eac9d6ac648d688ad065b66e65dd56463a7d05` |
| 3 | `theorem` | [sl_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/sl-bracket--198f01d03994f3d704f1bca7.md) | 102 | `result-track:198f01d03994f3d704f1bca78464b7ba106a6ce874bf3d392d31cfea9749adb9` |
| 4 | `def` | [single](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/single--d30ada08613b2ebabd2c7f0d.md) | 112 | `declaration-track:d30ada08613b2ebabd2c7f0d8cccf409a6b6494f9a6352c9118f741cc7f6cee8` |
| 5 | `theorem` | [val_single](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/val-single--17c37b5e65d73d15d1076899.md) | 118 | `result-track:17c37b5e65d73d15d10768998108ef8b3106a5ee4af5b3b1ff313d4f604803c3` |
| 6 | `def` | [singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/singlesubsingle--108702bacc371b41c889904c.md) | 125 | `declaration-track:108702bacc371b41c889904cc728ab63a5735606b940b86bfcd5de871ed75c98` |
| 7 | `theorem` | [val_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/val-singlesubsingle--929f35c1fbb9a5260ce36bd1.md) | 130 | `result-track:929f35c1fbb9a5260ce36bd1b502bed30f918e27d8f39c1766fee1da595db838` |
| 8 | `theorem` | [singleSubSingle_add_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/singlesubsingle-add-singlesubsingle--8dff20e09ae9bdf51385386c.md) | 135 | `result-track:8dff20e09ae9bdf51385386cc393fc1c16108db250b794536b8ae3438f4cd343` |
| 9 | `theorem` | [singleSubSingle_sub_singleSubSingle](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/singlesubsingle-sub-singlesubsingle--468d2c80b60a2dce67957b6f.md) | 140 | `result-track:468d2c80b60a2dce67957b6f10efd554122dccb59987c43b4d9a4b498982c3f8` |
| 10 | `theorem` | [singleSubSingle_sub_singleSubSingle'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/singlesubsingle-sub-singlesubsingle--d124cc6cc941dd7a1116b59a.md) | 145 | `result-track:d124cc6cc941dd7a1116b59a1e1ed4b39ffa395ff3f467526421dab556e8e154` |
| 11 | `theorem` | [sl_non_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/sl-non-abelian--c54fb027bb20aa946db86359.md) | 151 | `result-track:c54fb027bb20aa946db8635966f45c9c1cf6fcb0e976b70c47d860009e303193` |
| 12 | `def` | [sp](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/sp--72c6cacf3e6d35187e99aad2.md) | 167 | `declaration-track:72c6cacf3e6d35187e99aad29f9e79ceb3b301516d3a767f13039250e2e011b4` |
| 13 | `def` | [so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/so--bd162ce6cd3180f499ee72b0.md) | 176 | `declaration-track:bd162ce6cd3180f499ee72b048c157a8617e0441d715e63881ae13b44e9b0abc` |
| 14 | `theorem` | [mem_so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/mem-so--e81ae39310785bac6ef973d0.md) | 180 | `result-track:e81ae39310785bac6ef973d0bfa17ef1af4322c33ac0b0809b6d61c4e74a3f30` |
| 15 | `def` | [indefiniteDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/indefinitediagonal--0df97646c2d7c6bc27a08064.md) | 185 | `declaration-track:0df97646c2d7c6bc27a080640f5e23bc05297058a02ea822bfcfd8267ccd6a72` |
| 16 | `def` | [so'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/so--c8b8ac7c9efa1b43f07ad1cc.md) | 190 | `declaration-track:c8b8ac7c9efa1b43f07ad1cc3caf195fd92b74e41b1f99a7a30147c5de8e325f` |
| 17 | `def` | [Pso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pso--936c0c48324894bf74ffc817.md) | 195 | `declaration-track:936c0c48324894bf74ffc81765e3427abc3d56f711fe2f08434cb9958cb061bf` |
| 18 | `theorem` | [pso_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pso-inv--1c9ebe87f110834875637839.md) | 200 | `result-track:1c9ebe87f110834875637839509d1ee9f4b8d19885fea77ca18ee8575caa623a` |
| 19 | `def` | [invertiblePso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/invertiblepso--e796ccc1b00bc45ee226b1ed.md) | 214 | `declaration-track:e796ccc1b00bc45ee226b1ed0106894a0a342b87cfbc508771e3e495ba60ab2c` |
| 20 | `theorem` | [indefiniteDiagonal_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/indefinitediagonal-transform--b1aa3e2527ec9b81a1ac6c52.md) | 217 | `result-track:b1aa3e2527ec9b81a1ac6c529a11c1c88f5c2c851118ab9acd2a670ff46f30a1` |
| 21 | `def` | [soIndefiniteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/soindefiniteequiv--786ff56c8b6e837d401ca5b2.md) | 233 | `declaration-track:786ff56c8b6e837d401ca5b230095079b27790f384d6f072a12434053096a01f` |
| 22 | `theorem` | [soIndefiniteEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/soindefiniteequiv-apply--c50528b4da4439348a5b809f.md) | 240 | `result-track:c50528b4da4439348a5b809f2ce22f77ec7891123b3c456b900c53517509bf53` |
| 23 | `def` | [JD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/jd--5f3e2e16fa8ae7323948d7b2.md) | 254 | `declaration-track:5f3e2e16fa8ae7323948d7b2abc2d434d942b5d59fe992a53d6ff8915076e588` |
| 24 | `def` | [typeD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/typed--0a3cf7dcf728d166fd6da4a8.md) | 259 | `declaration-track:0a3cf7dcf728d166fd6da4a817f47e7dd58445a81fe5dfe3a3ccd4a5bb5cab86` |
| 25 | `def` | [PD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pd--e9c10c62947df8a44e710662.md) | 270 | `declaration-track:e9c10c62947df8a44e710662a8c086d70a426c7b77a074e50cff032a0c7d7533` |
| 26 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/s--238df89095047ac3b2b90593.md) | 274 | `declaration-track:238df89095047ac3b2b905930c360c7a2f82f2057b1e06343b884ba5f3cf9f27` |
| 27 | `theorem` | [s_as_blocks](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/s-as-blocks--9d54da137d3aabaa499ed09f.md) | 277 | `result-track:9d54da137d3aabaa499ed09f5640a716a8e8ba3cb93f7fca2ba2eedf2d7ce9c4` |
| 28 | `theorem` | [jd_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/jd-transform--dc82a6145f61b46f2f2463f9.md) | 281 | `result-track:dc82a6145f61b46f2f2463f9aa30a74c79c042f3766bf5d076884ae99073115a` |
| 29 | `theorem` | [pd_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pd-inv--158ec6eb4fb5e05bf1491fe4.md) | 287 | `result-track:158ec6eb4fb5e05bf1491fe4957bb9c61177ecd900d8b2650bfbd4497cffd559` |
| 30 | `instance` | [invertiblePD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/invertiblepd--c47df8d63215998d5d1e99a1.md) | 292 | `declaration-track:c47df8d63215998d5d1e99a1178f4b5cc8795f0c9d5e7c8380f9abc5f9a4e720` |
| 31 | `def` | [typeDEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/typedequivso--20ed20de53ad02736d66ae6e.md) | 296 | `declaration-track:20ed20de53ad02736d66ae6e6eb7775d13aa26b55d440052710af2a7c857ef38` |
| 32 | `def` | [JB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/jb--9bed457788fd769aadff6a5f.md) | 318 | `declaration-track:9bed457788fd769aadff6a5f1200abb4c39cf429eafc825de02bd2f547afa053` |
| 33 | `def` | [typeB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/typeb--5c823e68ad7bfa18b7d46c10.md) | 323 | `declaration-track:5c823e68ad7bfa18b7d46c104aa962e0459031f0837dba26a0d1d4c522e4dfeb` |
| 34 | `def` | [PB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pb--5c78d4c0d4e4c48da27b833d.md) | 341 | `declaration-track:5c78d4c0d4e4c48da27b833d09eee58502d9df89fd742d50623bb8b64299f9f3` |
| 35 | `theorem` | [pb_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/pb-inv--e1301c41485b1ef56dca4895.md) | 346 | `result-track:e1301c41485b1ef56dca4895710f99f9b36d8d14a601a7721975eb7503d1ced6` |
| 36 | `instance` | [invertiblePB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/invertiblepb--f3e28e0ea7276574628ffe37.md) | 351 | `declaration-track:f3e28e0ea7276574628ffe377702456648920872467cb72ebcd41aa0450294fe` |
| 37 | `theorem` | [jb_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/jb-transform--0954ed12ff8bf46bd8606101.md) | 354 | `result-track:0954ed12ff8bf46bd860610136b2fa9c606da82d8700b0d1b75a32bec07d68b5` |
| 38 | `theorem` | [indefiniteDiagonal_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/indefinitediagonal-assoc--b9df4ae7c5bdbbaae32249d1.md) | 358 | `result-track:b9df4ae7c5bdbbaae32249d160196c3952bb5f656f7716eba75e63fb255c9abc` |
| 39 | `def` | [typeBEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant8c381ef1a5e3316738ae9d404dbeb6de35299528e1e6c822b880724b12c854da.lean/declarations/typebequivso--0ac7a86f6f8e3e0ddf968573.md) | 372 | `declaration-track:0ac7a86f6f8e3e0ddf96857385de0f17f2e9df1ce56018f3237d0ab24c789dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
