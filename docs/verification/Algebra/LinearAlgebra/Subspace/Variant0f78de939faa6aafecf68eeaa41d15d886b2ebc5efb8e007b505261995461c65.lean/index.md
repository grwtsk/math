# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afca854e4c43ad7df23ce46967c6c37cf32104ea",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afca854e4c43ad7df23ce46967c6c37cf32104ea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orthonormal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Submodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/submodule-innerproductspace--7db71e92367542adb1c0dca8.md) | 40 | `declaration-track:7db71e92367542adb1c0dca810285a7f17d0e3c2d56082eb7f7dd812c9454f0c` |
| 2 | `theorem` | [Submodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/submodule-coe-inner--22ea647f39e577ca5e2956c2.md) | 50 | `result-track:22ea647f39e577ca5e2956c276914bf350435353b035e3465c00cc3b02f3bcb3` |
| 3 | `theorem` | [Orthonormal.codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthonormal-codrestrict--4829a99fa9cf9dae2a396336.md) | 53 | `result-track:4829a99fa9cf9dae2a396336c8efa793f63aaa7a3077c5e53f5f1772c15625f0` |
| 4 | `theorem` | [orthonormal_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthonormal-span--d1df1d9cde48538b5ffb61ee.md) | 57 | `result-track:d1df1d9cde48538b5ffb61eea0ddff5bad3ab16c5fd1a96f7099027f8a9390b9` |
| 5 | `def` | [OrthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily--7c8c410c99a4f65108d75242.md) | 89 | `declaration-track:7c8c410c99a4f65108d75242ccd34f2e84bfcf0fe9182f5b9a8ff671ce9fc52b` |
| 6 | `theorem` | [Orthonormal.orthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthonormal-orthogonalfamily--ef2a23c070508c8d0c6e04e0.md) | 97 | `result-track:ef2a23c070508c8d0c6e04e0388ade7a05cda4b2c616e19a93a3f3e3f0ead0a1` |
| 7 | `theorem` | [OrthogonalFamily.eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-eq-ite--ca27c1cb141db802b95ba3e9.md) | 105 | `result-track:ca27c1cb141db802b95ba3e9f8b2cef05dfba6c499cad36a7fd2349a935313c3` |
| 8 | `theorem` | [OrthogonalFamily.inner_right_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-inner-right-dfinsupp--b36b1dbc2a9f7e77acdaa8f0.md) | 111 | `result-track:b36b1dbc2a9f7e77acdaa8f014e1e13b782c659d44c6081c673af7aaa030c805` |
| 9 | `theorem` | [OrthogonalFamily.inner_right_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-inner-right-fintype--9fb8bb9af86ea9764678bfdd.md) | 126 | `result-track:9fb8bb9af86ea9764678bfdde94e0c130941f2467858cd6a031a60aeb7f9ddf7` |
| 10 | `theorem` | [OrthogonalFamily.inner_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-inner-sum--c09e97a97d0b96dee9b79756.md) | 136 | `result-track:c09e97a97d0b96dee9b79756cfc7a752753bfcf38af63ac6831c5a8308766bd5` |
| 11 | `theorem` | [OrthogonalFamily.norm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-norm-sum--462dde3ae3f8973a6608ebf0.md) | 150 | `result-track:462dde3ae3f8973a6608ebf041ab77e6eec0dea5f70f19ee36a8cf0ffc0b359e` |
| 12 | `theorem` | [OrthogonalFamily.comp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-comp--c39c8a9a2c222d92188d8c85.md) | 158 | `result-track:c39c8a9a2c222d92188d8c85281927e9f848a99d454089486903f36841922231` |
| 13 | `theorem` | [OrthogonalFamily.orthonormal_sigma_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-orthonormal-sigma-orthonormal--9b84dbfd6a5186cdd056c84b.md) | 162 | `result-track:9b84dbfd6a5186cdd056c84b000166310a5d44f76a5a4611697dfadb6c035e40` |
| 14 | `theorem` | [OrthogonalFamily.norm_sq_diff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-norm-sq-diff-sum--628e49fb055b0d941334bfd4.md) | 177 | `result-track:628e49fb055b0d941334bfd4745328c033cb7c090afbb77471d1b6aa10880f41` |
| 15 | `theorem` | [OrthogonalFamily.summable_iff_norm_sq_summable](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-summable-iff-norm-sq-summable--e9c0e78bdc605a69173e0877.md) | 203 | `result-track:e9c0e78bdc605a69173e0877c6bb3042b209664ae4600737f3577eb0d5b0551e` |
| 16 | `theorem` | [OrthogonalFamily.independent](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/orthogonalfamily-independent--9f60b117e57c77ec5bc8f676.md) | 259 | `result-track:9f60b117e57c77ec5bc8f676050ad3bfd9fd206740c570bbc1738e39901b5bde` |
| 17 | `theorem` | [DirectSum.IsInternal.collectedBasis_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant0f78de939faa6aafecf68eeaa41d15d886b2ebc5efb8e007b505261995461c65.lean/declarations/directsum-isinternal-collectedbasis-orthonormal--87ce48f828f172c6aca3ada5.md) | 276 | `result-track:87ce48f828f172c6aca3ada57d5f468d206b50da094ce92ab1e3ac9ba27a041d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
