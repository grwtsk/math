# Verification target: GRWTSK.Algebra.LinearAlgebra.Tautological.Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "366f05371c06865315c52a863ce3eedc046dc8ee",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `366f05371c06865315c52a863ce3eedc046dc8ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [tautological.R](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautological-r--51666339b09b68a70e7ed245.md) | 27 | `declaration-track:51666339b09b68a70e7ed24571e51d851955b60eaba6b69754fcbb77eb457e2c` |
| 2 | `def` | [tautologicalRelations](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautologicalrelations--cb229b4f2d69b855f45ed267.md) | 33 | `declaration-track:cb229b4f2d69b855f45ed2672b19994b859dbf3fed3c19dd2cde13d76ff3a538` |
| 3 | `def` | [tautologicalRelationsSolutionEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautologicalrelationssolutionequiv--50c39a544e6009e797006236.md) | 42 | `declaration-track:50c39a544e6009e797006236c8998573cd0c5c2a39476f64f84f1dc823a45b0d` |
| 4 | `def` | [tautologicalSolution](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautologicalsolution--9da33ec62fee9db0be581b5e.md) | 62 | `declaration-track:9da33ec62fee9db0be581b5ed981ad3f9a7d98753bc96ac82cb31f0669889ae7` |
| 5 | `def` | [tautologicalSolutionIsPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautologicalsolutionispresentationcore--0073d1042cda78a0c3352c13.md) | 66 | `declaration-track:0073d1042cda78a0c3352c131eac16e8cec64b976146db0c93a43ed24673abe9` |
| 6 | `lemma` | [tautologicalSolution_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautologicalsolution-ispresentation--57ffb4c02c3d9d57aaa8962b.md) | 74 | `result-track:57ffb4c02c3d9d57aaa8962bd5556e162cd588d8e263e0890b5c2259287ba055` |
| 7 | `def` | [tautological](../../../../../mathematics/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/declarations/tautological--2c189736cfd3c7d547705387.md) | 83 | `declaration-track:2c189736cfd3c7d547705387afbae647143e074c5ab59abe833f7061156c9cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
