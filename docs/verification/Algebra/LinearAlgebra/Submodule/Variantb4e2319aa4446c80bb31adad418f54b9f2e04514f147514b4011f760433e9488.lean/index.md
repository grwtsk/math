# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb547eeef061fc233d7f4887f841336d9e93638",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb547eeef061fc233d7f4887f841336d9e93638`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean.json)

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
| 1 | `def` | [mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap--a32d73dcf9d153abe3159e3e.md) | 72 | `declaration-track:a32d73dcf9d153abe3159e3e9a36f5023d5cf79750344dd93b6e962b7f38db1b` |
| 2 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-tmul--dcc80b2b6defc68675140c75.md) | 75 | `result-track:dcc80b2b6defc68675140c75fe6ceaecfd2e75f743d0c8809a6b72be361c3f30` |
| 3 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-map-comp-eq--75c873da1ca1d950f49bfa0e.md) | 77 | `result-track:75c873da1ca1d950f49bfa0e092dff5f5d48a8ded4980731a225167d80cd67b5` |
| 4 | `theorem` | [coe_mulMap_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/coe-mulmap-comp-eq--7761b88d2f63e031eb2a4323.md) | 87 | `result-track:7761b88d2f63e031eb2a43233bf4c4280d23690a1bdf46ad0e998e5fc52292e2` |
| 5 | `theorem` | [mulMap_op](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-op--e3c616244a9be5f7fbd5aa6e.md) | 93 | `result-track:e3c616244a9be5f7fbd5aa6ee0690a1d70bf25ce255e2250f23c8315ecff7089` |
| 6 | `theorem` | [mulMap_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-comm-of-commute--1125a8c6a75a62858c4b6e2b.md) | 102 | `result-track:1125a8c6a75a62858c4b6e2b57d8abd13c5cfd4bedfdcb3706fc769640053281` |
| 7 | `theorem` | [mulMap_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-comp-rtensor--3facc48b6421a83b5c01dc58.md) | 109 | `result-track:3facc48b6421a83b5c01dc5890a58001b5034b5d6d06f0a777e78c8c201631aa` |
| 8 | `theorem` | [mulMap_comp_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-comp-ltensor--827459a0d8ece563e5d9a7cf.md) | 114 | `result-track:827459a0d8ece563e5d9a7cf0959bca39e9d15bd085a3b7eae57e17bba82f5e3` |
| 9 | `theorem` | [mulMap_comp_map_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-comp-map-inclusion--f98c88fa67de9b8e11af831a.md) | 119 | `result-track:f98c88fa67de9b8e11af831adbdc8b4e650dbedca9fdaa0e50cf5fb6ac68759e` |
| 10 | `theorem` | [mulMap_eq_mul'_comp_mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-eq-mul-comp-mapincl--3a698a02ad2c51f65d2ce2fd.md) | 123 | `result-track:3a698a02ad2c51f65d2ce2fde813e1e6b1f93e690f9b34d1dd60503dee406bb3` |
| 11 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-range--267a06be5624e76b71664ce0.md) | 126 | `result-track:267a06be5624e76b71664ce04ed689a6f4acbea01759eae2331096ec64383e49` |
| 12 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap--2773ccf8186eb25dc01d0bc4.md) | 136 | `declaration-track:2773ccf8186eb25dc01d0bc4cfa5ad64b41597096ec9333162d79afc705a11b7` |
| 13 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/val-mulmap-tmul--9ab278bcf5045557c94f33fd.md) | 141 | `result-track:9ab278bcf5045557c94f33fd653938b7d42dd248b5f807385287f6077917b5ee` |
| 14 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-surjective--d854431490491246b4b7ea45.md) | 143 | `result-track:d854431490491246b4b7ea45efdd5e5d244ff92cd2bbb555e7c74b7aa664c3a8` |
| 15 | `def` | [lTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone--4162d9d6a2015a2a06845ec2.md) | 150 | `declaration-track:4162d9d6a2015a2a06845ec2f1927946f31127aaf6cd1ae90ce4c36c040c346b` |
| 16 | `theorem` | [lTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone-tmul--3244df6604d5f06618a1c5a2.md) | 157 | `result-track:3244df6604d5f06618a1c5a290eb9e78fc9556e0d19f99d310d82dbb816fcbd0` |
| 17 | `theorem` | [lTensorOne'_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone-one-tmul--c4ba520080aeeee70a5dad41.md) | 165 | `result-track:c4ba520080aeeee70a5dad41f1e7b74309f8db9d02e45f3c91ef0283f72665c1` |
| 18 | `def` | [lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone--243a90d3b8935b0e6e3fca41.md) | 172 | `declaration-track:243a90d3b8935b0e6e3fca41b75c408254e1756ca3b18fce646637a9660afdfa` |
| 19 | `theorem` | [lTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone-tmul--43cc8ab55eb8c8f687ed658e.md) | 182 | `result-track:43cc8ab55eb8c8f687ed658e4bc41b2f5f104919f19e29d471252e8700b4c089` |
| 20 | `theorem` | [lTensorOne_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone-one-tmul--2430f8b203acb9401cdcaa6c.md) | 187 | `result-track:2430f8b203acb9401cdcaa6ca73b7da46448f84bc5733a66d87b739fb6a11fac` |
| 21 | `theorem` | [lTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/ltensorone-symm-apply--f40b9cdf43d58d9e12072b64.md) | 192 | `result-track:f40b9cdf43d58d9e12072b64cc04fbda4c11ceb7e70955d14ac0b9c868cf4a1f` |
| 22 | `theorem` | [mulMap_one_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-one-left-eq--2d3670ba179b3a4434d36b28.md) | 194 | `result-track:2d3670ba179b3a4434d36b28fda0a17831d107dcaa7f504d676ba61cc865ec0a` |
| 23 | `def` | [rTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone--cdf7ff2dc27ec8c268924eab.md) | 201 | `declaration-track:cdf7ff2dc27ec8c268924eabd8897ebb8eecbf7027b17cf37ea4793fb1351510` |
| 24 | `theorem` | [rTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone-tmul--7e7cc42686a0e5c644b4ee65.md) | 208 | `result-track:7e7cc42686a0e5c644b4ee65aef15314731d8595c3554b28c6144bebf460f62e` |
| 25 | `theorem` | [rTensorOne'_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone-tmul-one--446199ae934a1f7037773a78.md) | 217 | `result-track:446199ae934a1f7037773a78ac2be94bc58de249e8523faac374b1cd09870a59` |
| 26 | `def` | [rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone--caa39c3d522ab3a9e16eebba.md) | 224 | `declaration-track:caa39c3d522ab3a9e16eebbaa0825ff84acb0e139b63be8609dc3f86739c07ac` |
| 27 | `theorem` | [rTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone-tmul--0e0dcae1e66e9afee64cadd5.md) | 234 | `result-track:0e0dcae1e66e9afee64cadd58a9dae919266c04f71179689fbc1382fe6af719f` |
| 28 | `theorem` | [rTensorOne_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone-tmul-one--aba89dfe58aa9ecac4524d5a.md) | 239 | `result-track:aba89dfe58aa9ecac4524d5a0c0121c00f9f28de2a9c81d78181b76ee1a12bed` |
| 29 | `theorem` | [rTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/rtensorone-symm-apply--48715fa67929cb2937dd76fd.md) | 244 | `result-track:48715fa67929cb2937dd76fdd051e789e5f9386ff77dab69b51235d683146dcc` |
| 30 | `theorem` | [mulMap_one_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-one-right-eq--6bbba2f553540d8d5a972b3a.md) | 246 | `result-track:6bbba2f553540d8d5a972b3af68822fed1f51ffb06f2698f28248ebf2d6406c7` |
| 31 | `theorem` | [comm_trans_lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/comm-trans-ltensorone--c832084fe895263a031652dc.md) | 251 | `result-track:c832084fe895263a031652dc1373e07f31f0514d2b45d7a28cdfb32b9fc9d80f` |
| 32 | `theorem` | [comm_trans_rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/comm-trans-rtensorone--d7d6d6a41bd2fc276453abe1.md) | 259 | `result-track:d7d6d6a41bd2fc276453abe1a3ec0657a851d7c7b402b1d04aef3a836570d339` |
| 33 | `theorem` | [mulLeftMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulleftmap-eq-mulmap-comp--079285f0ba2a14d0b4cf5818.md) | 267 | `result-track:079285f0ba2a14d0b4cf5818db88f44cf86c9206d18353508b3301efe18f4001` |
| 34 | `theorem` | [mulRightMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulrightmap-eq-mulmap-comp--7dec9c70529fdbb9c33bb094.md) | 273 | `result-track:7dec9c70529fdbb9c33bb0949ba8551c3d74ba5a7082c49e127a14aa4e95e4ce` |
| 35 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantb4e2319aa4446c80bb31adad418f54b9f2e04514f147514b4011f760433e9488.lean/declarations/mulmap-comm--87ece63c41e32dbe348f995e.md) | 286 | `result-track:87ece63c41e32dbe348f995e6b24777b90a4291ae339350d49036acff058792b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
