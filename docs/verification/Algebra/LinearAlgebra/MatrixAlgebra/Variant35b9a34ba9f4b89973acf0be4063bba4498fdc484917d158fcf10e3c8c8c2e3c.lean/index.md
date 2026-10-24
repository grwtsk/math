# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixAlgebra.Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "809ffe33a6ac13769ad45494e059bca675814709",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `809ffe33a6ac13769ad45494e059bca675814709`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Kronecker` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerTMulLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmullinearequiv--6ba860ba3d438b4b44a79ba8.md) | 42 | `declaration-track:6ba860ba3d438b4b44a79ba832b9af2a86132c592547aaecdf879a959d9d9ec9` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmullinearequiv-tmul--bb65d008ded429d85c15836a.md) | 59 | `result-track:bb65d008ded429d85c15836a7d21b0f83dcf2930e9c3bfc73b9e1078070b155f` |
| 3 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmulalgequiv-symm-single-tmul--eab5883386ea852928b4fd55.md) | 63 | `result-track:eab5883386ea852928b4fd55ed46624e534331f6e5fcde027bb438b067bb8dd1` |
| 4 | `theorem` | [kroneckerTMulLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmullinearequiv-one--15fef704178a682236ea4e96.md) | 74 | `result-track:15fef704178a682236ea4e960e104ecd995293af51767aed07ad82da9822a37f` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmullinearequiv-mul--66a204993eb0bde9ea4304c1.md) | 80 | `result-track:66a204993eb0bde9ea4304c1ae9c0b5645bdbb04997f5797f6b1baa0b6df5b9d` |
| 6 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/tofunbilinear--e8f0b0302879e3d514d34c25.md) | 101 | `declaration-track:e8f0b0302879e3d514d34c2557e37f3837fe36430573786b48eb2be88242a642` |
| 7 | `theorem` | [toFunBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/tofunbilinear-apply--ee11a26b806d3eeaf518d699.md) | 105 | `result-track:ee11a26b806d3eeaf518d6994ab24fd2a8d85c1222348008c236a9b94e981b2a` |
| 8 | `def` | [toFunLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/tofunlinear--9ea0b59dbb1338ba6fbbcc7c.md) | 113 | `declaration-track:9ea0b59dbb1338ba6fbbcc7cb0ddf18e4583e396e44055c5ec4078a10c4746d3` |
| 9 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/tofunalghom--bfd0a847a0d9709e0b7159b6.md) | 120 | `declaration-track:bfd0a847a0d9709e0b7159b68b94e493ba227ab7459aa6c06feebd43c20f2da1` |
| 10 | `theorem` | [toFunAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/tofunalghom-apply--dc35a68ccbb9edcb15d25b80.md) | 134 | `result-track:dc35a68ccbb9edcb15d25b80f954f77b029ce99f8c3d120dd286ebc607060860` |
| 11 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/invfun--2e3af1f024691c6652a48407.md) | 142 | `declaration-track:2e3af1f024691c6652a48407dc8a74e87659c699e0927ce43b44836705890cb7` |
| 12 | `theorem` | [invFun_zero](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/invfun-zero--4d8ae1715a01fede81496f4d.md) | 146 | `result-track:4d8ae1715a01fede81496f4d45e5b5d8c446dd6434105a883496833687513fff` |
| 13 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/invfun-add--bffc47037aed1845c9dddbaa.md) | 149 | `result-track:bffc47037aed1845c9dddbaa9548f3915e999b348e6415e2187f71d32a8cee2e` |
| 14 | `theorem` | [invFun_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/invfun-smul--2c1df91b222174b844fb17be.md) | 154 | `result-track:2c1df91b222174b844fb17be22d30e360901d36d574055d63706dc71863fa4a5` |
| 15 | `theorem` | [invFun_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/invfun-algebramap--4f07e7956c9de1e3187fb628.md) | 159 | `result-track:4f07e7956c9de1e3187fb6285203075284bcea01b97deb6b507ef0943a32e74e` |
| 16 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/right-inv--499c6e97c87f08873cfcf9ed.md) | 166 | `result-track:499c6e97c87f08873cfcf9ed6bd949cbd6ca28dd6efd0f4d34133b9148eacf17` |
| 17 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/left-inv--e7974045ba18b3ed77d60cc4.md) | 174 | `result-track:e7974045ba18b3ed77d60cc4aa0c473229e05aaf9b95458681e9ad60edc0eaf1` |
| 18 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/equiv--b97ffd00a21d05ab18c0ed4f.md) | 186 | `declaration-track:b97ffd00a21d05ab18c0ed4fb0d919b7068ab29a6702d418b03b9666824f1dd1` |
| 19 | `def` | [matrixEquivTensor](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/matrixequivtensor--869fe43f0919054cae0c51d8.md) | 198 | `declaration-track:869fe43f0919054cae0c51d8e3b0b4ac7d1ffcea777136cfaab262e14ecdd3d0` |
| 20 | `theorem` | [matrixEquivTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/matrixequivtensor-apply--661c407e57c4834792b4f561.md) | 204 | `result-track:661c407e57c4834792b4f56109623ebc238ab294a2774f720da8439b2322ef00` |
| 21 | `theorem` | [matrixEquivTensor_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/matrixequivtensor-apply-single--8d92bb64685149f41fcbfc8d.md) | 210 | `result-track:8d92bb64685149f41fcbfc8d4d51e2fffa5f82118fe2700def73f16d2dafe384` |
| 22 | `theorem` | [matrixEquivTensor_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/matrixequivtensor-apply-symm--f591e8974e758a7a4bc9ab60.md) | 219 | `result-track:f591e8974e758a7a4bc9ab60c7fca883786e8ca7b917b690218c071263ef7da8` |
| 23 | `def` | [kroneckerTMulAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmulalgequiv--7cd49a30f1fc6a2f166b5856.md) | 229 | `declaration-track:7cd49a30f1fc6a2f166b5856620f500ab7730d43cfab29876f3b69ca5fab7ef2` |
| 24 | `theorem` | [kroneckerTMulAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmulalgequiv-apply--f74ab66385345d16c4adb9a8.md) | 238 | `result-track:f74ab66385345d16c4adb9a8c4516db8997317f72f304e8ec35957c1844635e6` |
| 25 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/declarations/kroneckertmulalgequiv-symm-apply--1635d3daf8edd50764893896.md) | 243 | `result-track:1635d3daf8edd50764893896b568c0eaf1774230a17e55b764f977972f8e62a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
