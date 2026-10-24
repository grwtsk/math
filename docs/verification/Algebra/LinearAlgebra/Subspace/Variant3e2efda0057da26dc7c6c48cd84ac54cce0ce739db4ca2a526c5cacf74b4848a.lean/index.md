# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "193a476e078bc8d5209ee8e0377842a38031ceec",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `193a476e078bc8d5209ee8e0377842a38031ceec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orthonormal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Submodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/submodule-innerproductspace--0ab161817430989fdb378294.md) | 32 | `declaration-track:0ab161817430989fdb3782948210a9c36dd1032ee14f8d72e0b8032b8bf8964b` |
| 2 | `theorem` | [Submodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/submodule-coe-inner--628345372e8dafbc914b627e.md) | 42 | `result-track:628345372e8dafbc914b627ed71d33c7acff50c14fb47e67c590f00e78fe8372` |
| 3 | `theorem` | [Orthonormal.codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthonormal-codrestrict--d49d892a8a55e257f8f161fc.md) | 45 | `result-track:d49d892a8a55e257f8f161fc21a27551850ad00a5ed81ffe3a9073ff2b69f81d` |
| 4 | `theorem` | [orthonormal_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthonormal-span--2d289d4c3dd2e945d6a2c0f4.md) | 49 | `result-track:2d289d4c3dd2e945d6a2c0f49fe4d4294c7daf38433da2a3a96ac0348a423acd` |
| 5 | `def` | [OrthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily--719f79369cd23ac3d71449ac.md) | 81 | `declaration-track:719f79369cd23ac3d71449acb73f04b8a6d015992e77b16eedad8a41bcd65742` |
| 6 | `theorem` | [Orthonormal.orthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthonormal-orthogonalfamily--3881b03b4876f9dfd3edf154.md) | 89 | `result-track:3881b03b4876f9dfd3edf154e3df9525ec03b9c19855579c2cdde481f9bb013f` |
| 7 | `theorem` | [OrthogonalFamily.eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-eq-ite--8f7d8657175ae8d753d15949.md) | 97 | `result-track:8f7d8657175ae8d753d15949900c1c17bea2dcf41b5df7b2acbac5bab12586de` |
| 8 | `theorem` | [OrthogonalFamily.inner_right_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-inner-right-dfinsupp--dc35b25325812afbcf2e7fee.md) | 103 | `result-track:dc35b25325812afbcf2e7feead85e1d0cab21be5a04c69bc8aa9b88944fac126` |
| 9 | `theorem` | [OrthogonalFamily.inner_right_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-inner-right-fintype--e1db947ad53d5b95d78c6d79.md) | 118 | `result-track:e1db947ad53d5b95d78c6d79009cc53804d2e21c90f4d0bd04c2d0bc36ab951c` |
| 10 | `theorem` | [OrthogonalFamily.inner_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-inner-sum--727304fbdf3ebafd003dfa16.md) | 128 | `result-track:727304fbdf3ebafd003dfa167b4f896de65a2620cfaf10a0ad1a26052a9fa989` |
| 11 | `theorem` | [OrthogonalFamily.norm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-norm-sum--fcb436e974ec6555a46bb9ff.md) | 142 | `result-track:fcb436e974ec6555a46bb9ff8ddfb068b977f16671e1862e701f77a6b0d4e47d` |
| 12 | `theorem` | [OrthogonalFamily.comp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-comp--345b3c44181edea05c367ba3.md) | 150 | `result-track:345b3c44181edea05c367ba36e161dd7b17e405ac856460efa1afe0bfc743e6a` |
| 13 | `theorem` | [OrthogonalFamily.orthonormal_sigma_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-orthonormal-sigma-orthonormal--e2bdd05e8debe09c0ceb63a4.md) | 154 | `result-track:e2bdd05e8debe09c0ceb63a46023065b5a367f5c5b6bd997ad83c2c8ed82e5c3` |
| 14 | `theorem` | [OrthogonalFamily.norm_sq_diff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-norm-sq-diff-sum--57675ed71ae6febacb7f1c74.md) | 169 | `result-track:57675ed71ae6febacb7f1c74c11d3a007299b72e6079d9666f7270b800236029` |
| 15 | `theorem` | [OrthogonalFamily.summable_iff_norm_sq_summable](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-summable-iff-norm-sq-summable--811f66e03538c75dffe18efa.md) | 195 | `result-track:811f66e03538c75dffe18efad701b9d18db3af332b09119a17667e3ae15b3a16` |
| 16 | `theorem` | [OrthogonalFamily.independent](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/orthogonalfamily-independent--31b5cc7e30be3d8a93a636d5.md) | 251 | `result-track:31b5cc7e30be3d8a93a636d5298eacdcb7792d48234a56e4f955cdf9b90be3fb` |
| 17 | `theorem` | [DirectSum.IsInternal.collectedBasis_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/declarations/directsum-isinternal-collectedbasis-orthonormal--3fb7836dd3f2a273d315857a.md) | 268 | `result-track:3fb7836dd3f2a273d315857aadac608d7a4a5a6ff31bb192455f9263d73e91de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
