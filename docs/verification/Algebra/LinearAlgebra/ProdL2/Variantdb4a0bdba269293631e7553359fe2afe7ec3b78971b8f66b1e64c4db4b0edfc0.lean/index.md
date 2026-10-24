# Verification target: GRWTSK.Algebra.LinearAlgebra.ProdL2.Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88f8bf7c97c03fd128ddec72a0f44935069d501a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88f8bf7c97c03fd128ddec72a0f44935069d501a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean.json)

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
| 1 | `instance` | [instProdInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/instprodinnerproductspace--a90e0e20eac4276a073fc6b8.md) | 40 | `declaration-track:a90e0e20eac4276a073fc6b8710904e2c3777b9a891052a7856bf995e7a217f6` |
| 2 | `theorem` | [prod_inner_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/prod-inner-apply--ad8dfc51491ea14c1e52183f.md) | 55 | `result-track:ad8dfc51491ea14c1e52183f2b1783704382abd5d1c07cc6aaefeb19f83b54b3` |
| 3 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/prod--1bd1a960ab76ebc1a687b0e1.md) | 66 | `declaration-track:1bd1a960ab76ebc1a687b0e15368d82d7cad95530e4801058c16c8a0b0d1bb98` |
| 4 | `theorem` | [prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/prod-apply--4c45ba6d13de9f79e805e0c4.md) | 80 | `result-track:4c45ba6d13de9f79e805e0c4b36f08f466921c2b96fa8f36c6e55c14c141244a` |
| 5 | `def` | [orthogonalDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/orthogonaldecomposition--91685666c4b8fc8a5c312986.md) | 97 | `declaration-track:91685666c4b8fc8a5c312986eaeca5c3606a2750b7375f60b9669b21e413d0fe` |
| 6 | `theorem` | [orthogonalDecomposition_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/orthogonaldecomposition-apply--8cd4df93d94a4f0cf74cc6b5.md) | 106 | `result-track:8cd4df93d94a4f0cf74cc6b5809af386ec6a377f90d320e32230054611832a2f` |
| 7 | `theorem` | [toLinearEquiv_orthogonalDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/tolinearequiv-orthogonaldecomposition--233553eb2daa11fad660492a.md) | 111 | `result-track:233553eb2daa11fad660492af8acff11b325a4a2e6f930f1f4087cee92787a25` |
| 8 | `theorem` | [toLinearEquiv_orthogonalDecomposition_symm](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/tolinearequiv-orthogonaldecomposition-symm--d86d4ff88bb891c6a8738259.md) | 117 | `result-track:d86d4ff88bb891c6a873825918469134812f7f31153216f5ad9872472f74d788` |
| 9 | `theorem` | [coe_orthogonalDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/coe-orthogonaldecomposition--a924642492ab5a41733cc084.md) | 123 | `result-track:a924642492ab5a41733cc084c9cb2981c101fbf603f79643410f2eebc2626106` |
| 10 | `theorem` | [coe_orthogonalDecomposition_symm](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/coe-orthogonaldecomposition-symm--97bd552909ce14bb8399431c.md) | 129 | `result-track:97bd552909ce14bb8399431c9cd6f0dad32ed062085eace0f1dc0f1df4e9bd41` |
| 11 | `theorem` | [fst_orthogonalDecomposition_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/fst-orthogonaldecomposition-apply--acbc1e25c4f5d072bd794803.md) | 134 | `result-track:acbc1e25c4f5d072bd79480315357dde804a6f960612adcac5c51003fdb6f523` |
| 12 | `theorem` | [snd_orthogonalDecomposition_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/snd-orthogonaldecomposition-apply--e44299738320479a29d22b4a.md) | 138 | `result-track:e44299738320479a29d22b4adb6cea64f6adc24fc05203b412433bb2134f708f` |
| 13 | `theorem` | [fstL_comp_coe_orthogonalDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/fstl-comp-coe-orthogonaldecomposition--8579181c92b4ce4b768adb2b.md) | 142 | `result-track:8579181c92b4ce4b768adb2b5ad124d636d29dd548673739f45c8e4f81c8759d` |
| 14 | `theorem` | [sndL_comp_coe_orthogonalDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/sndl-comp-coe-orthogonaldecomposition--fcacd3a27c856bbac1fcbd95.md) | 146 | `result-track:fcacd3a27c856bbac1fcbd956e9140d701f029940ae58bf406804f8c7a0247fc` |
| 15 | `def` | [quotientEquivOrthogonal](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/quotientequivorthogonal--7c940529a464b89fa8531b1f.md) | 152 | `declaration-track:7c940529a464b89fa8531b1fb31a4a45e8d87df489ea7221fbc32925d278a2e5` |
| 16 | `theorem` | [coe_quotientEquivOrthogonal](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/coe-quotientequivorthogonal--5a4ba8e93af3857c17fa53d6.md) | 166 | `result-track:5a4ba8e93af3857c17fa53d6141e1ff2e4ee5dd7dd5426c8b1e796e6e1cda32c` |
| 17 | `theorem` | [coe_quotientEquivOrthogonal_symm](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/coe-quotientequivorthogonal-symm--0ebb5d5433b4be9bdb14788e.md) | 171 | `result-track:0ebb5d5433b4be9bdb14788ec3f49923f06285d310c783ff8bbb85ed429e6d81` |
| 18 | `lemma` | [toLinearEquiv_quotientEquivOrthogonal](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/tolinearequiv-quotientequivorthogonal--e45b7f697680080022731e4d.md) | 176 | `result-track:e45b7f697680080022731e4de871c44b2f9c521033b37881693e9a9ad564f149` |
| 19 | `theorem` | [quotientEquivOrthogonal_mk](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/quotientequivorthogonal-mk--b37ef2108fd9b4df5b46d2b8.md) | 180 | `result-track:b37ef2108fd9b4df5b46d2b836be08c0f6f7d01c67bb6fa8fefd2a3bededce96` |
| 20 | `theorem` | [quotientEquivOrthogonal_symm_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/quotientequivorthogonal-symm-eq-mk--5bed049bbf061e1b158fd241.md) | 184 | `result-track:5bed049bbf061e1b158fd241b551fc4be0291f626ffe3d541db07953a16bf037` |
| 21 | `instance` | [instQuotientInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/instquotientinnerproductspace--696964c9b8745bf58263b148.md) | 188 | `declaration-track:696964c9b8745bf58263b14832d37d1330a7146ea47ae8e3f82ab64b622e4e18` |
| 22 | `theorem` | [inner_quotient_eq](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/inner-quotient-eq--0fec2d0893325ec1ee124f92.md) | 197 | `result-track:0fec2d0893325ec1ee124f9256bfc3bcf3bcd1af1d2f8fcb3c463401763d2fa9` |
| 23 | `theorem` | [Quotient.inner_mk_mk](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/declarations/quotient-inner-mk-mk--5177463c683dc87a2981a875.md) | 201 | `result-track:5177463c683dc87a2981a875b1098dbf31984fc6e0992fb01c32a894cd9ac647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
