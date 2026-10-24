# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt07.Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d6b3813eb20e962e6cce92dac2652c6ac15472",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d6b3813eb20e962e6cce92dac2652c6ac15472`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/cartanmatrix--1868115d02d15635afca8a8f.md) | 22 | `declaration-track:1868115d02d15635afca8a8fa2d4a4a6d7fca4e028a08129a6ec25e7cb0a64c8` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutationmatrix-cartan--f0f9022f82c460413f6a22dc.md) | 25 | `result-track:f0f9022f82c460413f6a22dc045e95eac973b432c13c01c311f38f1521bcf810` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutation-form-entry--f4c111f24376852f1e51b148.md) | 41 | `result-track:f4c111f24376852f1e51b148ec67e10bfeb6095bac43d6e58529995f83d45ae7` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/weightedcartan-symmetric--4008a358af101d0e279047aa.md) | 57 | `result-track:4008a358af101d0e279047aadaf9e4914bcda62ecb27b62b8a1cdd201f6c42c8` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutationmatrix-weighted-metric--6917b847cd815114e69a5cc7.md) | 71 | `result-track:6917b847cd815114e69a5cc75686cb61799db0a090c243124c91f4c4aefa0fbd` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutationmatrix-symmetric-metric--c8cfa2155be7002e4ae012be.md) | 89 | `result-track:c8cfa2155be7002e4ae012be450b9d75d3f9146dc0c4696775bb8066d09bce71` |
| 7 | `theorem` | [wordMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/wordmatrix-weighted-metric--513a1eefea47395994fe2cff.md) | 97 | `result-track:513a1eefea47395994fe2cff0d70b8c0796431c53c9ed012d64123c182b0eb33` |
| 8 | `theorem` | [wordMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/wordmatrix-symmetric-metric--f3e63d05cbf5a8eb38a36a06.md) | 116 | `result-track:f3e63d05cbf5a8eb38a36a065e7031e4e536dedf4dd90ec51b5b73dc6c1ca5d6` |
| 9 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutationmatrix-nonadjacent-commute--b5efdb3ae51c1e44a0d9e0d4.md) | 125 | `result-track:b5efdb3ae51c1e44a0d9e0d44da5fa7e84b019c2a6dee6f76ed09d2601b7f4ae` |
| 10 | `theorem` | [cartan_row_square](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/cartan-row-square--2ed6c505f75bf446f0b5b41c.md) | 148 | `result-track:2ed6c505f75bf446f0b5b41caadb6b87b5c0fd20d657c6b5cfa65a3e87e80e7d` |
| 11 | `theorem` | [cartan_row_triple](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/cartan-row-triple--715bae35a525f8dfc39e3cb4.md) | 161 | `result-track:715bae35a525f8dfc39e3cb4881c117a8d82eb4f3a8fa13152de4237aa788a30` |
| 12 | `theorem` | [mutationMatrix_adjacent_braid](../../../../../mathematics/Algebra/LinearAlgebra/Attempt07/Varianta5dd1b4f41b4763e2f21b68b9081f9d125ad81a8ebad8a7f43fa72a4096b6db1.lean/declarations/mutationmatrix-adjacent-braid--06fa052dd1ff31e36d3902f0.md) | 175 | `result-track:06fa052dd1ff31e36d3902f03a53bce7662ac72a168e969a3dd871cf91047077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
