# Verification target: GRWTSK.Analysis.InnerProductSpace.DilationGram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6f70fee1ac6edaf24dccb14c8f63341d7d4554e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/DilationGram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6f70fee1ac6edaf24dccb14c8f63341d7d4554e`.

Source path: `GRWTSK/Analysis/InnerProductSpace/DilationGram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/DilationGram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceVector](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/sourcevector--e55d43b6bedb2a442a85564f.md) | 26 | `declaration-track:e55d43b6bedb2a442a85564f8f136c788ba04cbad98aae43abd6d88955127025` |
| 2 | `def` | [sourceGram](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/sourcegram--e8bef16e45bfd0b3269c2dbc.md) | 29 | `declaration-track:e8bef16e45bfd0b3269c2dbc84554cdbbd3ca3ec1e6255946662346be4d722e7` |
| 3 | `def` | [weightedSource](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/weightedsource--0bda8b43ac99ca1a3dd54867.md) | 32 | `declaration-track:0bda8b43ac99ca1a3dd5486700d65347f4271fa456bf19cb131fe52323995340` |
| 4 | `def` | [sourceEnergy](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/sourceenergy--7590397e3da5b9939e09c685.md) | 35 | `declaration-track:7590397e3da5b9939e09c685481b0c410bcea8bde945ad5fb8c2eab3425547b2` |
| 5 | `theorem` | [normalized_source_measurable](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/normalized-source-measurable--34ae06d65ece008336d094b1.md) | 38 | `result-track:34ae06d65ece008336d094b14f0e2f20d98c746b60684ec567893dcca343dbeb` |
| 6 | `theorem` | [source_gram_eq_integral](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-gram-eq-integral--34a8922caea061258b85cee9.md) | 41 | `result-track:34a8922caea061258b85cee9c41a691b98eb42417f842d66f585b17b4231a2f0` |
| 7 | `theorem` | [source_gram_symm](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-gram-symm--6c0f135112caa50efbab6c79.md) | 57 | `result-track:6c0f135112caa50efbab6c797cbc6a82dee419388f8c7b5e781d4cbb16e4fc23` |
| 8 | `theorem` | [source_vector_memLp](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-vector-memlp--24ed4d699b66b1d55b1e23ab.md) | 64 | `result-track:24ed4d699b66b1d55b1e23ab5ebb184ef4310b4933523c1e2bb6fc9326d51d21` |
| 9 | `theorem` | [source_vectors_product_integrable](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-vectors-product-integrable--3fb44392cd5fcb388ad850d3.md) | 73 | `result-track:3fb44392cd5fcb388ad850d39bf350c51611d108924de4700e209f7f6c9599df` |
| 10 | `theorem` | [source_gram_diagonal](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-gram-diagonal--ef8bb3f8d25b67e5d8db2578.md) | 79 | `result-track:ef8bb3f8d25b67e5d8db257827d88127128f08ca01598b7ba45f597df397a9bb` |
| 11 | `theorem` | [source_gram_diagonal_eq_one](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-gram-diagonal-eq-one--ad54388f12df25ece4fcc091.md) | 83 | `result-track:ad54388f12df25ece4fcc091feaf5d1bdb9e2e8595d1b6bcc7b676308f4e729e` |
| 12 | `theorem` | [finite_weighted_source_square](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/finite-weighted-source-square--f48b440901e2b4b55224a43e.md) | 88 | `result-track:f48b440901e2b4b55224a43e907ce85e66dd58647362a5827485e668de56b28b` |
| 13 | `theorem` | [finite_source_energy_eq_gram](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/finite-source-energy-eq-gram--32a6cd4b823eee38dbd928d6.md) | 102 | `result-track:32a6cd4b823eee38dbd928d6492eb46e47c7be36133bf50101a6e7fa33db64f6` |
| 14 | `theorem` | [finite_weighted_source_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/finite-weighted-source-square-integrable--35341be589998b7a078e30fb.md) | 121 | `result-track:35341be589998b7a078e30fb45d78f7b2bdf3568744b01174cb47f48fcf1c28b` |
| 15 | `theorem` | [finite_source_gram_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/finite-source-gram-nonnegative--35a6a6dd4782574f29939f0a.md) | 132 | `result-track:35a6a6dd4782574f29939f0a3ced79c6fb90e195c02813e29f75f5ad01d43e4b` |
| 16 | `theorem` | [source_energy_eq_gram](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-energy-eq-gram--0a46b01f5121d2c0978f0e0e.md) | 140 | `result-track:0a46b01f5121d2c0978f0e0e935077718ca4da9e7fc5da2beee10ee43dfeb21a` |
| 17 | `theorem` | [source_energy_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-energy-nonnegative--232a9d8d3ca1ac95661f339e.md) | 146 | `result-track:232a9d8d3ca1ac95661f339e3ce482083e0a24da7810f941946ea89389d76e88` |
| 18 | `def` | [sourceGramMatrix](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/sourcegrammatrix--b604262b0843272f1eca28f4.md) | 149 | `declaration-track:b604262b0843272f1eca28f4ba21e10cb680cc111af76d394156c6577c66a097` |
| 19 | `theorem` | [source_gram_matrix_positive_semidefinite](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/declarations/source-gram-matrix-positive-semidefinite--606e139e00e1d2a9ae7af3f3.md) | 154 | `result-track:606e139e00e1d2a9ae7af3f3f905ebbbcc94dc7cad94f745713ac3119fda20f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
