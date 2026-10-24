# Verification target: GRWTSK.Algebra.GroupTheory.Grading.Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37729cbf379cc56f728d6a0fa5d20b56e66c0f82",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37729cbf379cc56f728d6a0fa5d20b56e66c0f82`.

Source path: `GRWTSK/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [gradeBy](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby--41319e3e34f8ff88944c1b5f.md) | 47 | `declaration-track:41319e3e34f8ff88944c1b5f623c54d9229b374b3857a13393f2ab57b19d7a91` |
| 2 | `abbrev` | [grade](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade--873d4f8bf28f3396b6f6dbd9.md) | 55 | `declaration-track:873d4f8bf28f3396b6f6dbd9938573e1606ecd14fc4bc26ca3761396da4282ee` |
| 3 | `theorem` | [gradeBy_id](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby-id--3206497c1d7ea570dbc67aed.md) | 59 | `result-track:3206497c1d7ea570dbc67aedb86602b00dede412e8511c75067d6ac58f8336e7` |
| 4 | `theorem` | [mem_gradeBy_iff](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/mem-gradeby-iff--7c07b00f8ea43b69074a9ffe.md) | 62 | `result-track:7c07b00f8ea43b69074a9ffe3810d0fb4012b3fce48d5dbb71b62bbb129f3838` |
| 5 | `theorem` | [mem_grade_iff](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/mem-grade-iff--29edd09e32739596d5c18303.md) | 66 | `result-track:29edd09e32739596d5c183035f6a2be6af4c407045f6ea0c4fc7710d87dce072` |
| 6 | `theorem` | [mem_grade_iff'](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/mem-grade-iff--609c2af0ca0aea1aec5f2431.md) | 71 | `result-track:609c2af0ca0aea1aec5f2431a54b18a596d5a3ba8679a17fa6ce545b63b93f9d` |
| 7 | `theorem` | [grade_eq_lsingle_range](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-eq-lsingle-range--b1cdedcd7b49c1dc045f689a.md) | 80 | `result-track:b1cdedcd7b49c1dc045f689aa646bbec6b2b69f34c6e368c16089c32e24764e8` |
| 8 | `theorem` | [single_mem_gradeBy](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/single-mem-gradeby--6f8473fe1a0bb54af266fd49.md) | 85 | `result-track:6f8473fe1a0bb54af266fd49fe3cecb0cb81e8616f9dafdff490be0068994297` |
| 9 | `theorem` | [single_mem_grade](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/single-mem-grade--23314024cf36c71a60daf4cb.md) | 91 | `result-track:23314024cf36c71a60daf4cb01c4138c0de27d57135d5c727252be6a2ad0a724` |
| 10 | `instance` | [gradeBy.gradedMonoid](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby-gradedmonoid--b00404ece0a59d445b9698b0.md) | 99 | `declaration-track:b00404ece0a59d445b9698b07797b2c513258f23ac2bac6e4b6e2d9e97ac9723` |
| 11 | `instance` | [grade.gradedMonoid](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-gradedmonoid--91004f15540852e1c72381c5.md) | 116 | `declaration-track:91004f15540852e1c72381c55be944868991f27e61f1907de8a3d0e70dd67128` |
| 12 | `def` | [decomposeAux](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/decomposeaux--16dae3b2e19513db7c79a58d.md) | 126 | `declaration-track:16dae3b2e19513db7c79a58dd6017520d5a612aa24d239a39a413f330122ae74` |
| 13 | `theorem` | [decomposeAux_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/decomposeaux-single--a95a98f7cd2f8c5daa8f3258.md) | 144 | `result-track:a95a98f7cd2f8c5daa8f32583cc5985c523aba7ef2cd813592b87550fd22cfab` |
| 14 | `theorem` | [decomposeAux_coe](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/decomposeaux-coe--b28ebe846795a32f2fb5ea63.md) | 157 | `result-track:b28ebe846795a32f2fb5ea635e32b9c3ecebd50fe167e9f295818d5529a732e5` |
| 15 | `instance` | [gradeBy.gradedAlgebra](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby-gradedalgebra--75013acbc8ea0c1024f92b68.md) | 183 | `declaration-track:75013acbc8ea0c1024f92b684556379d56061d71448faef4314e96390e5bbbbb` |
| 16 | `instance` | [gradeBy.decomposition](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby-decomposition--5ac794390b5abf0cebf1902e.md) | 194 | `declaration-track:5ac794390b5abf0cebf1902ed432f97f4a2973b73513f53d9d59452253912747` |
| 17 | `theorem` | [decomposeAux_eq_decompose](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/decomposeaux-eq-decompose--2687de7049a8948112b31793.md) | 198 | `result-track:2687de7049a8948112b317939d5f68b13c65eda08c300849d4e929348bcb477f` |
| 18 | `theorem` | [GradesBy.decompose_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradesby-decompose-single--ef6f7d59cdfbbf1b2749372d.md) | 205 | `result-track:ef6f7d59cdfbbf1b2749372da36f59f332edd7026098ab863b0cefacce7db785` |
| 19 | `instance` | [grade.gradedAlgebra](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-gradedalgebra--cdc0cc6bb2dddbf8e6ee2907.md) | 212 | `declaration-track:cdc0cc6bb2dddbf8e6ee29077342fb7d2cf09ff7bb26e18e12e9bf60777c8e4e` |
| 20 | `instance` | [grade.decomposition](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-decomposition--7f2c462e334d25a2cf3510ab.md) | 217 | `declaration-track:7f2c462e334d25a2cf3510ab1496b3a7b9a99d8aad4511f2d2c65712d0efa4bb` |
| 21 | `theorem` | [grade.decompose_single](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-decompose-single--9b7732cad69d1f097c710738.md) | 222 | `result-track:9b7732cad69d1f097c710738dada4c33c34c262d08c33f51c10e3efc2877a32c` |
| 22 | `theorem` | [gradeBy.isInternal](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/gradeby-isinternal--93e1b70a2bd1dedca5896044.md) | 229 | `result-track:93e1b70a2bd1dedca58960441431a7b7f07c2451852749793ca3ef3be5a918e0` |
| 23 | `theorem` | [grade.isInternal](../../../../../mathematics/Algebra/GroupTheory/Grading/Variantec37ba091e8212e08322c7759994578278e8fdb24b198881c08b141c5b76a2e4.lean/declarations/grade-isinternal--0a89ce3aff7a801815f50c5f.md) | 234 | `result-track:0a89ce3aff7a801815f50c5f853ef928de7aedfab2ee7a17c575d49bb5bab7fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
