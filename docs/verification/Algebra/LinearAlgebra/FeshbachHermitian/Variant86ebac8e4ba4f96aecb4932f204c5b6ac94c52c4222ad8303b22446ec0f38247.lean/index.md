# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachHermitian.Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d2fac555622f683416ecb7e52128b71ec7f4362",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d2fac555622f683416ecb7e52128b71ec7f4362`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completion_of_squares](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/declarations/completion-of-squares--a1ade12566d9d6e6a99017b5.md) | 38 | `result-track:a1ade12566d9d6e6a99017b5f6c11ca7ddd0929519356fcac3533758b5dae17b` |
| 2 | `theorem` | [isHermitian_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/declarations/ishermitian-iff--26820e904414f192e8d1a63c.md) | 51 | `result-track:26820e904414f192e8d1a63cea6fcd78e7d05646c4f610d7bd8861e3da360871` |
| 3 | `theorem` | [posSemidef_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/declarations/possemidef-iff--f5162d3978c881685407d08c.md) | 68 | `result-track:f5162d3978c881685407d08c9dc3e27cf609c3e1c52ff616ce8a840333bf6d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
