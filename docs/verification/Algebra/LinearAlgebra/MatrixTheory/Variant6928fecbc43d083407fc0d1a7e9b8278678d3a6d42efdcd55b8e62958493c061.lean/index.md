# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a6f8a92d9ec6f38a6b8a48546563eb8f97f73b9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a6f8a92d9ec6f38a6b8a48546563eb8f97f73b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean.json)

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
| 1 | `abbrev` | [Matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/declarations/matrix--8d51cc905e549c94b1e0ddd0.md) | 25 | `declaration-track:8d51cc905e549c94b1e0ddd0cde19ef1acfa2104fc4f3028c11dbc65595dbed9` |
| 2 | `def` | [Matrix.entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/declarations/matrix-entry--2f4d0cb0a384a19d8fcaeb45.md) | 29 | `declaration-track:2f4d0cb0a384a19d8fcaeb45061cca0f8fe4c3b134457dd0bb0ad1bb1afacdb8` |
| 3 | `def` | [Matrix.row](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/declarations/matrix-row--6d7a5ba1bb6ac6c29ab32dbf.md) | 37 | `declaration-track:6d7a5ba1bb6ac6c29ab32dbfdcbe643e8dd7d077211388a2ac7765282ca7b095` |
| 4 | `def` | [Matrix.col](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/declarations/matrix-col--dbef330f5a406b6bf7a0ba3f.md) | 44 | `declaration-track:dbef330f5a406b6bf7a0ba3f01fff82eaa6333542fef27ea99ccc1d6105872c6` |
| 5 | `theorem` | [Matrix.entry_eq_false_or_true](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6928fecbc43d083407fc0d1a7e9b8278678d3a6d42efdcd55b8e62958493c061.lean/declarations/matrix-entry-eq-false-or-true--a0c8615960c88a7118554b2e.md) | 51 | `result-track:a0c8615960c88a7118554b2e4744f0af95c6100ee4dd0819d1c8b699df07fb4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
