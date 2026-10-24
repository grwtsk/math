# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryArithmetic.Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff2b4466ee3e88d7858af51daf2ab7505cf9a7c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff2b4466ee3e88d7858af51daf2ab7505cf9a7c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CellularArithmetic.BinaryMatrixEncoding` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.CellularArithmetic.CellularRepresentation` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unary_encoding_decodes](../../../../../mathematics/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean/declarations/unary-encoding-decodes--e0a96e6d2c54f4ece8c03eae.md) | 26 | `result-track:e0a96e6d2c54f4ece8c03eae7e87480c4324dd0b2ad3d3fad6c1373303059c8f` |
| 2 | `theorem` | [unary_encoding_matrix_rows](../../../../../mathematics/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean/declarations/unary-encoding-matrix-rows--0a8938284647ed9c1807e18b.md) | 31 | `result-track:0a8938284647ed9c1807e18b4370835f22716643bbc6586e18255aaef94f55ce` |
| 3 | `theorem` | [unary_encoding_matrix_cols](../../../../../mathematics/Algebra/LinearAlgebra/BinaryArithmetic/Variant32a45baefa2ec56be45e5c465932b62b1e48da26f87ddf5a6cdbec850b69bf92.lean/declarations/unary-encoding-matrix-cols--7199fc9b46cf01f92cc45d09.md) | 36 | `result-track:7199fc9b46cf01f92cc45d099f038ee35235164e26c0c2590d095deb2c317c49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
