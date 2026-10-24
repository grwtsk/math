# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StoneWeierstrass.Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2423b858edcaa7a4364c27ac2b4d5ea335513cd0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2423b858edcaa7a4364c27ac2b4d5ea335513cd0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Weierstrass` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachBound](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/attachbound--e58611aa4c998f71d24b52c1.md) | 65 | `declaration-track:e58611aa4c998f71d24b52c1e84152b1328eea27261d16d3bcf279d3b40cf94b` |
| 2 | `theorem` | [attachBound_apply_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/attachbound-apply-coe--ea05368bd3831f08b21636c1.md) | 70 | `result-track:ea05368bd3831f08b21636c1a0bc051279953333b5ccfa501b7957a575fcfa60` |
| 3 | `theorem` | [polynomial_comp_attachBound](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/polynomial-comp-attachbound--f2e51157e67f810bc69145b8.md) | 74 | `result-track:f2e51157e67f810bc69145b88457f2a7b87b8465e80a404adf5263a991e29e4f` |
| 4 | `theorem` | [polynomial_comp_attachBound_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/polynomial-comp-attachbound-mem--1e43c5f47af9b2e7402a6828.md) | 91 | `result-track:1e43c5f47af9b2e7402a682880b2eaca04dc3380b3c864aee931d76f9b8218d1` |
| 5 | `theorem` | [comp_attachBound_mem_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/comp-attachbound-mem-closure--c32de92f96856f5af457087d.md) | 97 | `result-track:c32de92f96856f5af457087da14e3b106298f4e3dd23094f0f5883f99a01d602` |
| 6 | `theorem` | [abs_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/abs-mem-subalgebra-closure--18a3f2cccd15577a922271e2.md) | 119 | `result-track:18a3f2cccd15577a922271e2611a5edf4ce66e91ebaccf425f246eec19e16f42` |
| 7 | `theorem` | [inf_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/inf-mem-subalgebra-closure--ac16ee541966541080a4f499.md) | 127 | `result-track:ac16ee541966541080a4f499de3faf86b3a77859194f0c6644bf48dcf881d1e3` |
| 8 | `theorem` | [inf_mem_closed_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/inf-mem-closed-subalgebra--282a83b25231d8789ceb61e3.md) | 140 | `result-track:282a83b25231d8789ceb61e3077d8786d1e2376aed853504a12c35acb7f45999` |
| 9 | `theorem` | [sup_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/sup-mem-subalgebra-closure--57ee27f1492a97bac202d3e0.md) | 149 | `result-track:57ee27f1492a97bac202d3e01ab03dfefcb02bfcfa095097173a7eefa07e652c` |
| 10 | `theorem` | [sup_mem_closed_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/sup-mem-closed-subalgebra--c201ee5648c493ab278d6dc3.md) | 162 | `result-track:c201ee5648c493ab278d6dc3bca5a11ec918d432f4d8f5ed3bab341eab39bcc2` |
| 11 | `theorem` | [sublattice_closure_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/sublattice-closure-eq-top--a492f2d3dfafd84eb16c0a56.md) | 174 | `result-track:a492f2d3dfafd84eb16c0a56c65b2af2a22c4a598029f3d222b5e4a9270cc54e` |
| 12 | `theorem` | [subalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/subalgebra-topologicalclosure-eq-top-of-separatespoints--9a358df1c0438a82cc1e0f87.md) | 278 | `result-track:9a358df1c0438a82cc1e0f874f9b60d4083d2c9d3fe1a4be09c457ee6b1be42b` |
| 13 | `theorem` | [continuousMap_mem_subalgebra_closure_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/continuousmap-mem-subalgebra-closure-of-separatespoints--cf31c29b9a633cdc4c766e0d.md) | 300 | `result-track:cf31c29b9a633cdc4c766e0d7641c1024e1c58bef50c2e9350b219603bbcec47` |
| 14 | `theorem` | [exists_mem_subalgebra_near_continuousMap_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/exists-mem-subalgebra-near-continuousmap-of-separatespoints--442a0923d71bd3289f79ac4d.md) | 312 | `result-track:442a0923d71bd3289f79ac4dd2b7b7dd52ce089e802c9de774cbcb2fe2a45ff0` |
| 15 | `theorem` | [exists_mem_subalgebra_near_continuous_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/exists-mem-subalgebra-near-continuous-of-separatespoints--79820ec02e26e3dd1b33f5c8.md) | 329 | `result-track:79820ec02e26e3dd1b33f5c86b1a6127bf7dcfd48de18a1df7f0065a405f08e3` |
| 16 | `theorem` | [Subalgebra.SeparatesPoints.isROrC_to_real](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/subalgebra-separatespoints-isrorc-to-real--79e2c93ff97d820f23b2d8a3.md) | 358 | `result-track:79e2c93ff97d820f23b2d8a3cf1925255a7d1e3ca13c794af8a8a06a28048fd5` |
| 17 | `theorem` | [ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--f5e2d3b3312b44b2934580e3.md) | 390 | `result-track:f5e2d3b3312b44b2934580e3045ca759f6f4c9faf08b6f96817b3c26662247fb` |
| 18 | `theorem` | [polynomialFunctions.topologicalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/polynomialfunctions-topologicalclosure--02879221cc5dda5e30d60a16.md) | 441 | `result-track:02879221cc5dda5e30d60a16859b7308253a3f7403de057d491167cd4fcee2b9` |
| 19 | `theorem` | [polynomialFunctions.starClosure_topologicalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/polynomialfunctions-starclosure-topologicalclosure--bc655a51db828bedfbe56506.md) | 448 | `result-track:bc655a51db828bedfbe5650616a08c409703fe26e9bf93d69a12c3bfa3cf904e` |
| 20 | `theorem` | [ContinuousMap.algHom_ext_map_X](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/continuousmap-alghom-ext-map-x--447658e829ac9ba5e05c6552.md) | 456 | `result-track:447658e829ac9ba5e05c655250b92a47ca9e3bb40f43406cb35713de2a3fc583` |
| 21 | `theorem` | [ContinuousMap.starAlgHom_ext_map_X](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variantbb00c9e0817e8d625bcdf122434b1a38d5fd51d174b982f7c76abc7aa28662d2.lean/declarations/continuousmap-staralghom-ext-map-x--6d9f7e2acf7a60f534cb0281.md) | 469 | `result-track:6d9f7e2acf7a60f534cb0281f5a5eb1e7f0fccce44277b43ed15c02287cd8d7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
