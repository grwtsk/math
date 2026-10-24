# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f55abe887d4104554fc5da4bfea572ad7c2c754",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f55abe887d4104554fc5da4bfea572ad7c2c754`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/counit-eq-alghom-tolinearmap--200fa5b3a67dcdac07791734.md) | 43 | `result-track:200fa5b3a67dcdac0779173460489ea7e710fa5f77ceda730fd9391e0563a7e0` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comul-eq-alghom-tolinearmap--e28fc45926f5d8e4e2f66798.md) | 49 | `result-track:e28fc45926f5d8e4e2f66798bd22512d3a4490d44e9094182182b528252295fd` |
| 3 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.CounitEqAlgHomToLinearMap.Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.TensorProduct.instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/root-grwtsk-algebra-linearalgebra-couniteqalghomtolinearmap-variant3ccbd--451ef2c820b66bdc2e39100b.md) | 56 | `declaration-track:451ef2c820b66bdc2e39100b7845ff77bac14fcf8a76082eb3735f1cdd49c164` |
| 4 | `lemma` | [counitAlgHom_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/counitalghom-def--9de6449c2b88da2fb9ca3887.md) | 63 | `result-track:9de6449c2b88da2fb9ca3887e3e14ee9160b86d1993ee9cec4ab5aa41ead8478` |
| 5 | `lemma` | [comulAlgHom_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comulalghom-def--063be7028313c35ba48f2fb1.md) | 68 | `result-track:063be7028313c35ba48f2fb1bc82d75a2a6563bc3f1738da7014974afbc6e739` |
| 6 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/map--857a04464a373cba65ab8482.md) | 80 | `declaration-track:857a04464a373cba65ab84825ceda8b093c1b815ecbfebc0559b777432732287` |
| 7 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/map-tmul--bfabccd1730f6cbdbb96dee5.md) | 85 | `result-track:bfabccd1730f6cbdbb96dee5b10ff5db97f38995517c7a3860c56481ba0b8cbe` |
| 8 | `theorem` | [map_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/map-tocoalghom--237d769d355394751357eb26.md) | 90 | `result-track:237d769d355394751357eb2654a75afac03e1dfe4023d4cfb2932634244471d8` |
| 9 | `theorem` | [map_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/map-toalghom--533c0f5c9669fbfbc6a7ebf1.md) | 94 | `result-track:533c0f5c9669fbfbc6a7ebf1ae842914dc2a52526f8912f24ad9d38b1bb761e1` |
| 10 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/assoc--43bfeed9a0809c774bf6c6e1.md) | 101 | `declaration-track:43bfeed9a0809c774bf6c6e18b6af392199176e7385c2dc2ef54629f743c2ed5` |
| 11 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/assoc-tmul--0d9265706ee898f866b7694a.md) | 105 | `result-track:0d9265706ee898f866b7694a15cc10f6d2be6d621564a27a16902760c204f1d9` |
| 12 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/assoc-symm-tmul--0debf158faf2eb348a10b039.md) | 110 | `result-track:0debf158faf2eb348a10b039a90ec5c096382fce554ffe758b00e9dfbaeb0335` |
| 13 | `theorem` | [assoc_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/assoc-tocoalgequiv--436d8c7f4177fbb91967b8b1.md) | 115 | `result-track:436d8c7f4177fbb91967b8b19f7337140df43157d634d97f395c784ef3f20fc0` |
| 14 | `theorem` | [assoc_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/assoc-toalgequiv--2897960c76152691995f694f.md) | 120 | `result-track:2897960c76152691995f694fad7c2f944fe380c846bccd85d6dc4e88c8f2d5d8` |
| 15 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/lid--0fb34439f767f736427c5ed0.md) | 127 | `declaration-track:0fb34439f767f736427c5ed096445f014506f08c4f3bc535243ce3ca930f4f3e` |
| 16 | `theorem` | [lid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/lid-tocoalgequiv--5cf938ef8257ccde86b45c50.md) | 131 | `result-track:5cf938ef8257ccde86b45c505a3ab81fc31e4af266baf44ec4ff4f889346e606` |
| 17 | `theorem` | [lid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/lid-toalgequiv--07eace2f55d08ed8b755ccbc.md) | 135 | `result-track:07eace2f55d08ed8b755ccbc2a4fd8aeb110b48d78ae7d6bcaef3e7deafda0b0` |
| 18 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/lid-tmul--c2a247ddb06cfb5ff3d4d8be.md) | 139 | `result-track:c2a247ddb06cfb5ff3d4d8be74bebb7a039dbd8a48904454d843a0862a156eaf` |
| 19 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/lid-symm-apply--4a215ce4193ff88eb9c00bab.md) | 142 | `result-track:4a215ce4193ff88eb9c00bab7e8747dc7d7f556781efac2a5680b4700f3b4d38` |
| 20 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/coalgebra-rid-eq-algebra-rid-apply--9971352f881d17a06fb394d8.md) | 144 | `result-track:9971352f881d17a06fb394d8f5bccc55cab61e5db1619f59a54a7f45d2238550` |
| 21 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rid--966e7f20ef2b0940f87d2bd5.md) | 150 | `declaration-track:966e7f20ef2b0940f87d2bd5fbb1009757437f4d5d66ef7225fc1852b1adf22b` |
| 22 | `theorem` | [rid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rid-tocoalgequiv--bb9b6a96b6ca03d57a8a0afc.md) | 155 | `result-track:bb9b6a96b6ca03d57a8a0afc4a1844432c2f49d34e58ac0b69c6d18168fefc79` |
| 23 | `theorem` | [rid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rid-toalgequiv--0d121730e0dab86baf730371.md) | 159 | `result-track:0d121730e0dab86baf7303717aef25ffb7f3598f15881c92d057b9e0f5df8f5f` |
| 24 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rid-tmul--ecef6e6db35cf76dbf060bfa.md) | 165 | `result-track:ecef6e6db35cf76dbf060bfa67b2dc5241bda7e791ed7ee9ec6c9c82b322b3f4` |
| 25 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rid-symm-apply--e173d09c35865e63979c8031.md) | 168 | `result-track:e173d09c35865e63979c803131292c3e67b34cbceddcff5d9f80cf1ca857ea8f` |
| 26 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comm--bd1a3770b0bab68d5af60907.md) | 177 | `declaration-track:bd1a3770b0bab68d5af60907c987995379aa11182dec8625d01235cc9b29baa8` |
| 27 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/ltensor--dee17a592d6b61ab1d3f819e.md) | 195 | `declaration-track:dee17a592d6b61ab1d3f819e6fc0ac5211c9598f15408e667c072ab17c47ab94` |
| 28 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/rtensor--f4d748ef8e8336e742d7279a.md) | 199 | `declaration-track:f4d748ef8e8336e742d7279aa4c56b34e688154763412d53f2e07d9792e98cf1` |
| 29 | `def` | [comulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comulbialghom--9ff648c05058a975d27057b5.md) | 212 | `declaration-track:9ff648c05058a975d27057b5fb17c0425db510cbdc60cd939bc31a81001cddb5` |
| 30 | `lemma` | [comm_comp_comulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comm-comp-comulbialghom--563311e97d96532c1aaa8be3.md) | 216 | `result-track:563311e97d96532c1aaa8be3f55e137170e17084498d86a84cf9d76117da5326` |
| 31 | `def` | [mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/mulcoalghom--060049a88c2255ed3123ce05.md) | 223 | `declaration-track:060049a88c2255ed3123ce057a7179c3c9ce028f60cafcf86f5fed23d36b4104` |
| 32 | `lemma` | [toLinearMap_mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/tolinearmap-mulcoalghom--49bccefdf35dc906a4598f0c.md) | 233 | `result-track:49bccefdf35dc906a4598f0cb2370c0edb6f3f9b713c193c0939a82fbb39be0b` |
| 33 | `lemma` | [coe_mulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/coe-mulcoalghom--43ad6d9144596553d7dc0e5f.md) | 235 | `result-track:43ad6d9144596553d7dc0e5f8c700c51dc1f3ecc00fe9c50bb8ffbff72215471` |
| 34 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.CounitEqAlgHomToLinearMap.Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.Coalgebra.Repr.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/root-grwtsk-algebra-linearalgebra-couniteqalghomtolinearmap-variant3ccbd--9a8a1f84030bd5418f18ad29.md) | 239 | `declaration-track:9a8a1f84030bd5418f18ad29ea7b56dded1b386182ec82a4adc201ae4258405c` |
| 35 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.CounitEqAlgHomToLinearMap.Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.Coalgebra.Repr.mul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/root-grwtsk-algebra-linearalgebra-couniteqalghomtolinearmap-variant3ccbd--c3f36ecf870fd95420b3757d.md) | 250 | `declaration-track:c3f36ecf870fd95420b3757dea7e80c665e232a1a858382c7eb53102c99452cb` |
| 36 | `lemma` | [counitAlgHom_comp_includeRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/counitalghom-comp-includeright--3aa4032384fafe539ee881d9.md) | 256 | `result-track:3aa4032384fafe539ee881d95e9803be0703508396322c54ff405b1cb10b7fcb` |
| 37 | `lemma` | [comul_includeRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/comul-includeright--f659706ec1d60ed8917cbc23.md) | 261 | `result-track:f659706ec1d60ed8917cbc23cc96397b3328b0e26b458db3fa2a9ceba0fa9b93` |
| 38 | `def` | [mulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/mulbialghom--858d81aa69dd33e8af1a13d2.md) | 278 | `declaration-track:858d81aa69dd33e8af1a13d2f50c68827c3fe1e1e8584bb1e6767490d8509400` |
| 39 | `lemma` | [mulBialgHom_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/mulbialghom-toalghom--984f2d85ede54471562816a8.md) | 283 | `result-track:984f2d85ede54471562816a8588ce73d00fb431d389f49ce52ca58330e29470d` |
| 40 | `lemma` | [coe_mulBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean/declarations/coe-mulbialghom--d1fcb267b463f25f89506bdf.md) | 285 | `result-track:d1fcb267b463f25f89506bdfcb72a378b7b82fc14bb706bf264b8cb0b0c2b2c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
