# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fa2bd75c3d290059668899dcbd7bb415363eeb9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fa2bd75c3d290059668899dcbd7bb415363eeb9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean.json)

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
| 1 | `def` | [tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct--43687578bb833567d948e223.md) | 38 | `declaration-track:43687578bb833567d948e2236b1d40f0317c6d09f49b53cffa4b500c86fd343b` |
| 2 | `theorem` | [tensorProduct_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-apply--554f7983e16e78701e261bec.md) | 46 | `result-track:554f7983e16e78701e261bec56b4d28df95778fb13157dfbe582c605af00a3f8` |
| 3 | `theorem` | [tensorProduct_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-apply--f7580fa5f0f49d4dec54870b.md) | 50 | `result-track:f7580fa5f0f49d4dec54870b2b132a659c4ac390738fd8c1c75e22a610e0ea39` |
| 4 | `theorem` | [tensorProduct_repr_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-repr-tmul-apply--ffdf3edabbfd71ba0e73f783.md) | 55 | `result-track:ffdf3edabbfd71ba0e73f783e89a091033f06ea5eb61bfdbcea4c28f41c5bdd8` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/basechange--82d5346633fdde6f6e63f4ae.md) | 64 | `declaration-track:82d5346633fdde6f6e63f4ae950df3c054ce27b9b83ff6c8789cfd2fcd1163ee` |
| 6 | `lemma` | [baseChange_repr_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/basechange-repr-tmul--cb14d7d92d1e9e663e7c0df6.md) | 68 | `result-track:cb14d7d92d1e9e663e7c0df6f7e1ab0b35c4a13346251c36f90c4c5f6d99059f` |
| 7 | `lemma` | [baseChange_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/basechange-apply--7cd5571e26cda3281566aead.md) | 73 | `result-track:7cd5571e26cda3281566aead3ae1ecbd1a64328a4d27a53647095c87c38f5fc6` |
| 8 | `def` | [TensorProduct.equivFinsuppOfBasisRight](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright--848391dba2a861f6d871b240.md) | 88 | `declaration-track:848391dba2a861f6d871b24037eba877cb604d369dd0ed8a5965e61e3559299e` |
| 9 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul--dbeb36fa194104fa272a8ade.md) | 92 | `result-track:dbeb36fa194104fa272a8ade076c84f96a0877611cec0e537760c34bf745a947` |
| 10 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul-apply--f3cd70d206d293ae2a366389.md) | 97 | `result-track:f3cd70d206d293ae2a366389f31931ef1c5ba5e7105ad0d2a60460d49c920d73` |
| 11 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm--f7bcf8ee5296d9a1696f95ee.md) | 103 | `result-track:f7bcf8ee5296d9a1696f95ee4023ed7323aceea41006301af6d57d1b1a7f4a80` |
| 12 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm-apply--34c0c94e8d800c0ce90e88dc.md) | 109 | `result-track:34c0c94e8d800c0ce90e88dc4aae12885dc983ab5c0d209b683c80735bceae47` |
| 13 | `lemma` | [TensorProduct.sum_tmul_basis_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-sum-tmul-basis-right-injective--7676e6e5ee31b1b1b3f400b2.md) | 114 | `result-track:7676e6e5ee31b1b1b3f400b2626ff4efad5f0454b0faf630be71275d308512d0` |
| 14 | `lemma` | [TensorProduct.sum_tmul_basis_right_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-sum-tmul-basis-right-eq-zero--003dbde2a5d2369ea24b4a7b.md) | 121 | `result-track:003dbde2a5d2369ea24b4a7ba595106f1c9f60de2461bd15528e58c2f642f6e5` |
| 15 | `def` | [TensorProduct.equivFinsuppOfBasisLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft--37600fac5a75043c8e22c865.md) | 130 | `declaration-track:37600fac5a75043c8e22c86518f921929895772ad9742481c03a4ddeb68bd366` |
| 16 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul--4b4bb46ff6482e9284920978.md) | 134 | `result-track:4b4bb46ff6482e9284920978b18794300afb463c52c0994809bb8491c9082724` |
| 17 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul-apply--70af534d1763dc44f608df6e.md) | 139 | `result-track:70af534d1763dc44f608df6e1b38553043606222908b0f04cd33ae5dffb3c2a7` |
| 18 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply--d61f77fcf2a4fdc59d1315cf.md) | 147 | `result-track:d61f77fcf2a4fdc59d1315cff1741bae6402c650763ef4e50cb8fb2c5fa2882d` |
| 19 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply--5b65477534c68ae0b0fb0bfe.md) | 153 | `result-track:5b65477534c68ae0b0fb0bfef9971abe3dddbeaf647cac26ca04690e450196f2` |
| 20 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm--0375cf7ce943fa5b3894a693.md) | 157 | `result-track:0375cf7ce943fa5b3894a693338e7bc4dc2b183ac1c742393bf09466c476ad58` |
| 21 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm-apply--c0952a2701b9553ec2bf9772.md) | 163 | `result-track:c0952a2701b9553ec2bf9772d5a868a5ade33e915d6d9bbe2b652ed7ab722b21` |
| 22 | `lemma` | [TensorProduct.eq_repr_basis_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-eq-repr-basis-right--d9beb77e3f1287773f609232.md) | 170 | `result-track:d9beb77e3f1287773f609232563577ca6675397500b8fc0c0cb8f2cce4ebe9e0` |
| 23 | `lemma` | [TensorProduct.eq_repr_basis_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-eq-repr-basis-left--d79b87719db54c30b8317a86.md) | 177 | `result-track:d79b87719db54c30b8317a8643de1b9eab66f5e720182c6bf79af558bd3a644c` |
| 24 | `lemma` | [TensorProduct.sum_tmul_basis_left_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-sum-tmul-basis-left-injective--8129abc4fde3b586ea75ca20.md) | 183 | `result-track:8129abc4fde3b586ea75ca20ee1c781bd0c414a93826e1bdff144b33342d01f8` |
| 25 | `lemma` | [TensorProduct.sum_tmul_basis_left_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/tensorproduct-sum-tmul-basis-left-eq-zero--c4d4a32546b2fff8af14fc45.md) | 190 | `result-track:c4d4a32546b2fff8af14fc452ae54134092312f954ec7a8a85002ba19439ab09` |
| 26 | `instance` | [Module.Free.tensor](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant3754f71740ada3143aa2de27735a6f7a03e562278666e54d5be6c3d2275ef263.lean/declarations/module-free-tensor--bbb093765a5abf154da8f011.md) | 197 | `declaration-track:bbb093765a5abf154da8f0115b43e51290f1f0fa1d4ddc960799cd4e0c6ddc73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
