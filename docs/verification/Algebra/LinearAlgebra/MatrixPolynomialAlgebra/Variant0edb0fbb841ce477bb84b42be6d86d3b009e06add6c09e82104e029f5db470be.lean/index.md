# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixPolynomialAlgebra.Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MatrixAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matPolyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv--c41f1cf678ed3abf75e55d22.md) | 49 | `declaration-track:c41f1cf678ed3abf75e55d2231a2b2974e31c33d4b83932327a6c96756ee4b40` |
| 2 | `theorem` | [matPolyEquiv_symm_C](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-symm-c--45f1924627e41ae604229475.md) | 53 | `result-track:45f1924627e41ae60422947595059a99fd1a26d20daa43e597060aedf2357817` |
| 3 | `theorem` | [matPolyEquiv_map_C](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-map-c--e4f925e44d14b19ba2cc6510.md) | 56 | `result-track:e4f925e44d14b19ba2cc6510aad7e7402d83297975fb942d9e109b3e913b7a5f` |
| 4 | `theorem` | [matPolyEquiv_symm_X](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-symm-x--92a107509fe20b37b219f4fb.md) | 59 | `result-track:92a107509fe20b37b219f4fbbcc233e3d1a3c8eec62f84f6b3873f4e85cf3af6` |
| 5 | `theorem` | [matPolyEquiv_diagonal_X](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-diagonal-x--7c61f4d89bec6eebcfc1d6db.md) | 63 | `result-track:7c61f4d89bec6eebcfc1d6dbf37ca156940567e7756c012278c73dce8f8464ed` |
| 6 | `theorem` | [matPolyEquiv_coeff_apply_aux_1](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-coeff-apply-aux-1--11fa6cb38841cd0da1458e14.md) | 70 | `result-track:11fa6cb38841cd0da1458e14c4f1be868991a412eec7b7d0bb89a9a06d026449` |
| 7 | `theorem` | [matPolyEquiv_coeff_apply_aux_2](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-coeff-apply-aux-2--919f4df15298e50fdb4032cd.md) | 81 | `result-track:919f4df15298e50fdb4032cdb1977bf4acb2898dee01d8c1f64d944e3bc335f9` |
| 8 | `theorem` | [matPolyEquiv_coeff_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-coeff-apply--da1bf7666d0c5074c399a515.md) | 94 | `result-track:da1bf7666d0c5074c399a5153df77838707e916b0ccb21e77604484ac2ce255c` |
| 9 | `theorem` | [matPolyEquiv_symm_apply_coeff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-symm-apply-coeff--4ba7f06012d652f1f67713f3.md) | 109 | `result-track:4ba7f06012d652f1f67713f38d34ae54178bae1e26cf8808655489d70f6a5520` |
| 10 | `theorem` | [matPolyEquiv_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-smul-one--5ff3f81c250afaca221d3423.md) | 115 | `result-track:5ff3f81c250afaca221d34233622169bcf39efbcf66c86f5bd4a97288158b9a8` |
| 11 | `lemma` | [matPolyEquiv_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/matpolyequiv-map-smul--e3ed2c0d13b03cb314e7fc1a.md) | 123 | `result-track:e3ed2c0d13b03cb314e7fc1a3697c47fb758ab7af1c8e3a9c208bc8db420bc56` |
| 12 | `theorem` | [support_subset_support_matPolyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/support-subset-support-matpolyequiv--b4680ab6f54184fbbd9d8409.md) | 127 | `result-track:b4680ab6f54184fbbd9d8409d3ee70c12200e85f510a5cdbd4fba2a60b4279ed` |
| 13 | `def` | [RingHom.polyToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/ringhom-polytomatrix--908042cbb3db1f479fbf1fb1.md) | 137 | `declaration-track:908042cbb3db1f479fbf1fb140f9d07287d173cf1250ab421943b5c10c259362` |
| 14 | `lemma` | [evalRingHom_mapMatrix_comp_polyToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/evalringhom-mapmatrix-comp-polytomatrix--8b7cd9baa622ffc678657715.md) | 142 | `result-track:8b7cd9baa622ffc6786577158bca7848f4494e4c2fdd7934266e8935c3c553e7` |
| 15 | `lemma` | [evalRingHom_mapMatrix_comp_compRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/declarations/evalringhom-mapmatrix-comp-compringequiv--bcf86d31d18997835b5abdfd.md) | 146 | `result-track:bcf86d31d18997835b5abdfd2c347c9230374e0a6a34aaa65d972d06fc22079d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
