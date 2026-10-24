# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec17f29c8bf18588355ece0ea1cd5e21874d6c3e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec17f29c8bf18588355ece0ea1cd5e21874d6c3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean.json)

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
| 1 | `instance` | [Submodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/submodule-innerproductspace--f373cc879d4f78ad78f1ea11.md) | 44 | `declaration-track:f373cc879d4f78ad78f1ea11e3d96f353dc5b0a407a1a1be25f755f5690a133c` |
| 2 | `theorem` | [Submodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/submodule-coe-inner--d7835e0be06d4c266e80f313.md) | 49 | `result-track:d7835e0be06d4c266e80f313d76346052389c7dbfa279b3862a3073c61335016` |
| 3 | `theorem` | [Orthonormal.codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthonormal-codrestrict--37ef035e81c99aea2e1d3542.md) | 52 | `result-track:37ef035e81c99aea2e1d354224a75827712fe6f825e640549249219cdbd137d5` |
| 4 | `theorem` | [orthonormal_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthonormal-span--e337a525cb7ba55390dd75c1.md) | 56 | `result-track:e337a525cb7ba55390dd75c1919daae108f364e27ecdd7d7f98171528e45911e` |
| 5 | `instance` | [ClosedSubmodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/closedsubmodule-innerproductspace--b14db05f4e029faab75c4ff9.md) | 69 | `declaration-track:b14db05f4e029faab75c4ff9b2d837c0b67dc52597c3ede986ce253e2580571d` |
| 6 | `theorem` | [ClosedSubmodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/closedsubmodule-coe-inner--77a02146ac454108ad78478c.md) | 74 | `result-track:77a02146ac454108ad78478c867ce79559eb9656e677139c45150a167d85a2eb` |
| 7 | `def` | [OrthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily--9638f4bc0cbe0da9bc051600.md) | 103 | `declaration-track:9638f4bc0cbe0da9bc051600eafe2548ad05f2d8b1f17148d58e42bf71c3f3d7` |
| 8 | `theorem` | [Orthonormal.orthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthonormal-orthogonalfamily--ebcd2fd2b9e3cd7f202943c3.md) | 111 | `result-track:ebcd2fd2b9e3cd7f202943c3ccbb1f01987ee84d14bc3b88074341fde148b20b` |
| 9 | `theorem` | [OrthogonalFamily.eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-eq-ite--5e19b4422ae0171aa24574bb.md) | 119 | `result-track:5e19b4422ae0171aa24574bb4046c44540896b204c8e412119a8864bd52931e5` |
| 10 | `theorem` | [OrthogonalFamily.inner_right_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-inner-right-dfinsupp--53868065b59529b53d866c08.md) | 125 | `result-track:53868065b59529b53d866c084ea3b009f1f90a709c0f872955b491e0c7a176a3` |
| 11 | `theorem` | [OrthogonalFamily.inner_right_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-inner-right-fintype--d74e9d18c80f064015aff88c.md) | 140 | `result-track:d74e9d18c80f064015aff88c31b38731defd7db29e6873c7016df878fbd725ae` |
| 12 | `theorem` | [OrthogonalFamily.inner_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-inner-sum--3b214c5e7ed3b491eeba6a4c.md) | 150 | `result-track:3b214c5e7ed3b491eeba6a4cdd1b22178ce6d4a79d93a8b0feb689ccc0882c94` |
| 13 | `theorem` | [OrthogonalFamily.norm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-norm-sum--6bbe01cbcdb3affbf3131488.md) | 164 | `result-track:6bbe01cbcdb3affbf313148855430a757b52f48adf1b91d3839f3b52ad4e27c5` |
| 14 | `theorem` | [OrthogonalFamily.comp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-comp--d72a302907ad12585f5ec214.md) | 172 | `result-track:d72a302907ad12585f5ec21446720929f93227eccf120128d98e2428b668ad8a` |
| 15 | `theorem` | [OrthogonalFamily.orthonormal_sigma_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-orthonormal-sigma-orthonormal--59928e2dbe436a7155cc2c20.md) | 176 | `result-track:59928e2dbe436a7155cc2c20a4dc73b81a6c4e5c664c99a7390d6ade5e3ce8f1` |
| 16 | `theorem` | [OrthogonalFamily.norm_sq_sdiff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-norm-sq-sdiff-sum--ee8866279504d86e55943dff.md) | 191 | `result-track:ee8866279504d86e55943dffe344c58bb4d6f55e7f218a41bf10b6cf078f0dc3` |
| 17 | `theorem` | [OrthogonalFamily.summable_iff_norm_sq_summable](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-summable-iff-norm-sq-summable--ca92aa8d1ebd2b758c1ffef6.md) | 220 | `result-track:ca92aa8d1ebd2b758c1ffef67f58fa967ed33350eeed780b73924567467d74c7` |
| 18 | `theorem` | [OrthogonalFamily.independent](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/orthogonalfamily-independent--30c519d15e4f73558a74870a.md) | 272 | `result-track:30c519d15e4f73558a74870aea5fbdd6a51ebe7519a30c385b542f1fab3d8130` |
| 19 | `theorem` | [DirectSum.IsInternal.collectedBasis_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/declarations/directsum-isinternal-collectedbasis-orthonormal--8405d815a390038fece721b1.md) | 289 | `result-track:8405d815a390038fece721b10b573c13f5adce03610f71e5346b650ba148ed0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
