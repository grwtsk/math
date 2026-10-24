# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "216050abc9302261c8061d223460ff9667babfe5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `216050abc9302261c8061d223460ff9667babfe5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean.json)

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
| 1 | `instance` | [Submodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/submodule-innerproductspace--3d933e946234292816a7fdd6.md) | 36 | `declaration-track:3d933e946234292816a7fdd64aab390e74c14ff800adcbc37604f0c5fee9eebf` |
| 2 | `theorem` | [Submodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/submodule-coe-inner--08df229dc04e7fc9876c4ef8.md) | 41 | `result-track:08df229dc04e7fc9876c4ef83fa17dfdf202da120ecf27e9e02d4b609304ef10` |
| 3 | `theorem` | [Orthonormal.codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthonormal-codrestrict--4c14796185040f39f2a48550.md) | 44 | `result-track:4c14796185040f39f2a485501a7ec3656394cfc137787e69f85447e6079f2a9f` |
| 4 | `theorem` | [orthonormal_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthonormal-span--f0ffd200179711303f01bab7.md) | 48 | `result-track:f0ffd200179711303f01bab771bd08f25f104ca0873420e26d689c4f63dc2979` |
| 5 | `instance` | [ClosedSubmodule.innerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/closedsubmodule-innerproductspace--87421848804bf008ea7ffabd.md) | 61 | `declaration-track:87421848804bf008ea7ffabdddd039c6ede1b863baf3a38d393db29393eb3c65` |
| 6 | `theorem` | [ClosedSubmodule.coe_inner](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/closedsubmodule-coe-inner--22530799ec3b912a9f36ce21.md) | 66 | `result-track:22530799ec3b912a9f36ce21e9f39b2294b0951803f0243393b164945494e238` |
| 7 | `def` | [OrthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily--077cdbaa84741dd1d5f08dc1.md) | 95 | `declaration-track:077cdbaa84741dd1d5f08dc139e6ed999dc070102132ad34df7c080da4e77b69` |
| 8 | `theorem` | [Orthonormal.orthogonalFamily](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthonormal-orthogonalfamily--9a482f5a43f4289310603a1e.md) | 103 | `result-track:9a482f5a43f4289310603a1efcfe065e62759067b6be769fd9ba8ff0cd53ff20` |
| 9 | `theorem` | [OrthogonalFamily.eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-eq-ite--7aabb2807df918f0db9684d7.md) | 111 | `result-track:7aabb2807df918f0db9684d7aa67585c50f8ad821e27f81f27bd5241a76377ba` |
| 10 | `theorem` | [OrthogonalFamily.inner_right_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-inner-right-dfinsupp--50120cc18c46f659de3d2998.md) | 117 | `result-track:50120cc18c46f659de3d29981de22d3c1ca760e239ab6834e0d506df990115bd` |
| 11 | `theorem` | [OrthogonalFamily.inner_right_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-inner-right-fintype--28130a9f03ea47226bfc73fa.md) | 132 | `result-track:28130a9f03ea47226bfc73fa9f0f9079f154ed0348aaf068462cde8a3410c75f` |
| 12 | `theorem` | [OrthogonalFamily.inner_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-inner-sum--f075a9746af171b8c554fd04.md) | 142 | `result-track:f075a9746af171b8c554fd04a908b0a6aca6cc6977690cb216bbd1f85c8b7a05` |
| 13 | `theorem` | [OrthogonalFamily.norm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-norm-sum--2ada81bdfd8ef9612a08dd65.md) | 156 | `result-track:2ada81bdfd8ef9612a08dd654212d0d9bff993589971d925a9f78c3e658f9ecf` |
| 14 | `theorem` | [OrthogonalFamily.comp](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-comp--025e45c2ed216ac77fa2572f.md) | 164 | `result-track:025e45c2ed216ac77fa2572ff3924e49df2e0a22f657938daa44ca639403125f` |
| 15 | `theorem` | [OrthogonalFamily.orthonormal_sigma_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-orthonormal-sigma-orthonormal--d5cc3887f7e368dcc7953255.md) | 168 | `result-track:d5cc3887f7e368dcc795325537d920827803a4cbdb0e0a8281175cdf7915c551` |
| 16 | `theorem` | [OrthogonalFamily.norm_sq_sdiff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-norm-sq-sdiff-sum--8884d24a38dba42e0e219d69.md) | 183 | `result-track:8884d24a38dba42e0e219d69f632cb496b6281b0e1701eb22f3d5528fd65e190` |
| 17 | `theorem` | [OrthogonalFamily.summable_iff_norm_sq_summable](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-summable-iff-norm-sq-summable--79b7eaf38acc02dcc8b40d29.md) | 212 | `result-track:79b7eaf38acc02dcc8b40d29b4588c24666e8bae997667a5a8f6662179e0feb1` |
| 18 | `theorem` | [OrthogonalFamily.independent](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/orthogonalfamily-independent--548efde05962c1773e646d7a.md) | 264 | `result-track:548efde05962c1773e646d7afc85c34d520d7907127e115ae0f401f9f33bb684` |
| 19 | `theorem` | [DirectSum.IsInternal.collectedBasis_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/declarations/directsum-isinternal-collectedbasis-orthonormal--ac4a2e7117157fa3e6d23339.md) | 281 | `result-track:ac4a2e7117157fa3e6d233395a07c76eef01a4e260efc949b25c36654716c9bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
