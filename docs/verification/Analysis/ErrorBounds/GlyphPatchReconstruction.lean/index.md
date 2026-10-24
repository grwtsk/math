# Verification target: GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d31527241075e29dffc6ccc6ce20d0ae27bafe4e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/GlyphPatchReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d31527241075e29dffc6ccc6ce20d0ae27bafe4e`.

Source path: `GRWTSK/Analysis/ErrorBounds/GlyphPatchReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/GlyphPatchReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Geometry.QuadraticBezierContact`](../../../../mathematics/Analysis/Geometry/QuadraticBezierContact.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Budget](../../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/declarations/budget--ca72c8f0ff43ff4b8c48e00c.md) | 28 | `declaration-track:ca72c8f0ff43ff4b8c48e00c15dc9c747792042f79dc91d713e72ffd462b2ce4` |
| 2 | `def` | [Budget.total](../../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/declarations/budget-total--68d7561d497a4b81a9179c08.md) | 35 | `declaration-track:68d7561d497a4b81a9179c0803abd26fc027dc2b363555647c4ffe1f76995d67` |
| 3 | `theorem` | [signed_output_error_bound](../../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/declarations/signed-output-error-bound--36bd3baf37f74fd6a2854eca.md) | 42 | `result-track:36bd3baf37f74fd6a2854eca253b44ffca0bf679f8b2377402e40d39576b5e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
