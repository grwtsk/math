# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixCalculus.Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc30f916371ab9ca9bd483b46f8c357e017517e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc30f916371ab9ca9bd483b46f8c357e017517e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Calculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mutationMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/mutationmatrix--d3d4c948236664d397955067.md) | 7 | `declaration-track:d3d4c948236664d39795506706fbbce3e042d2cc75c5b2354f6290bb01115ae5` |
| 2 | `theorem` | [mutationMatrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/mutationmatrix-mulvec--1e6940862850b7af463c03f6.md) | 11 | `result-track:1e6940862850b7af463c03f6f591dcd31bcd5284448c4f8d339083efcdc57218` |
| 3 | `theorem` | [mutationMatrix_sq](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/mutationmatrix-sq--2b4c33e387b92d6b41eafae1.md) | 31 | `result-track:2b4c33e387b92d6b41eafae17d54b82ec95e5a93c1ab4349056435c35958a84c` |
| 4 | `theorem` | [mutationMatrix_det](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/mutationmatrix-det--69a23a1748bc78e855c2f6f8.md) | 38 | `result-track:69a23a1748bc78e855c2f6f8b57445b8357ddb8c5748dfa2c2b3d87326099a3a` |
| 5 | `def` | [wordMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/wordmatrix--3389e2f804ef19fee9514f29.md) | 48 | `declaration-track:3389e2f804ef19fee9514f29ffea4389e24cc4b7badf35d99c326eb29b47c949` |
| 6 | `theorem` | [wordMatrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/wordmatrix-mulvec--0aa8bdb627ead2d8c8a89ee9.md) | 53 | `result-track:0aa8bdb627ead2d8c8a89ee98e2d1bd1324173700767164e5ce7d284dc9b4fb7` |
| 7 | `theorem` | [wordMatrix_append](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/wordmatrix-append--d6fb76c246c62a45f373f54c.md) | 60 | `result-track:d6fb76c246c62a45f373f54c92ebfbfbbae05baf18dc19b35bd7bb77fc98d84f` |
| 8 | `theorem` | [wordMatrix_reverse](../../../../../mathematics/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/declarations/wordmatrix-reverse--b134f39c2c80c85913d2a454.md) | 67 | `result-track:b134f39c2c80c85913d2a454ae614df4230d70b1e014000414d40653066ff696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
