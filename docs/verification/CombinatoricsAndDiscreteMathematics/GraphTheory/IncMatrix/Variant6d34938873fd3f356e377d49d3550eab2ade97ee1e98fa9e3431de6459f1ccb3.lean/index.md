# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e17495c1a3af9c175db64dfb1cec0657c30348",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e17495c1a3af9c175db64dfb1cec0657c30348`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix--efa7b04b462b76987f4fc50c.md) | 54 | `declaration-track:efa7b04b462b76987f4fc50c8fa4afd267335dcb52a01c4d5909a34b6b5ad575` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply--6503989548451cdb10a36d54.md) | 59 | `result-track:6503989548451cdb10a36d542dfeb1afb05fc693cf716f5e6376fbbd7c9e17e6` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply--7ce177a92cb8fed1b27b6ef4.md) | 64 | `result-track:7ce177a92cb8fed1b27b6ef45d2f7c47eda50af14d89e8431749fb33f43622da` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply-mul-incmatrix-apply--325a6a2dbcb05bde4467f470.md) | 72 | `result-track:325a6a2dbcb05bde4467f470c8f12e094276d4989bc8c2a3c4fc32717a543082` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--7ebba49fbaee3eb692f7e809.md) | 77 | `result-track:7ebba49fbaee3eb692f7e8097b2245111da0886ea5e57a63ca2bb57768a3d97d` |
| 6 | `theorem` | [incMatrix_of_notMem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-of-notmem-incidenceset--73dc386104f6141c5a23a525.md) | 83 | `result-track:73dc386104f6141c5a23a525149178cb4cb5ea098b92ec1d178fe2268bba3a96` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-of-mem-incidenceset--c1bdb6dd001f91e7eaa1728e.md) | 89 | `result-track:c1bdb6dd001f91e7eaa1728e702e8642d8c120a4c67f131c344c1438c3d9e249` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply-eq-zero-iff--371e59f1cac44aa2a677bb73.md) | 94 | `result-track:371e59f1cac44aa2a677bb7354fe9b3d88d16fbedc9991534eaf77248d79103a` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-apply-eq-one-iff--f1a6bf1906a6f46bb156cf6e.md) | 97 | `result-track:f1a6bf1906a6f46bb156cf6e21750f73ac705bbb62734fcb876629785397a3eb` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/sum-incmatrix-apply--703f00dd3f06999ec18b8689.md) | 107 | `result-track:703f00dd3f06999ec18b8689173c87cbb42280516dcf3a53635cca439ebb2da8` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-mul-transpose-diag--ebf2eee88350e9858b6769bd.md) | 111 | `result-track:ebf2eee88350e9858b6769bd77fe9ed76fe39d7248e4cff50070cc65ccd55b57` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--d327462bcb267753d5eb1c8f.md) | 118 | `result-track:d327462bcb267753d5eb1c8f70a415821811c4c02ba0115b744ac45627429aa2` |
| 13 | `theorem` | [sum_incMatrix_apply_of_notMem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/sum-incmatrix-apply-of-notmem-edgeset--6f1e84d2c30a8df3a6b7bdea.md) | 130 | `result-track:6f1e84d2c30a8df3a6b7bdeac2444610582ba1a65a2ad8e24c1001f95a3fad03` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-transpose-mul-diag--cc6b6472f450617b4f6e81a6.md) | 137 | `result-track:cc6b6472f450617b4f6e81a6874dd2de0086120be15c2cfe3f49d38adc5d0ae3` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-mul-transpose-apply-of-adj--52685feab431caafddae1209.md) | 163 | `result-track:52685feab431caafddae12094ad7d02244a8bc89e765f40f3f74047782059b0d` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34938873fd3f356e377d49d3550eab2ade97ee1e98fa9e3431de6459f1ccb3.lean/declarations/incmatrix-mul-transpose--3e73601770c34a3746b4af25.md) | 173 | `result-track:3e73601770c34a3746b4af252abdae440fdb2fdde4d1ce688e48763b8f34087a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
