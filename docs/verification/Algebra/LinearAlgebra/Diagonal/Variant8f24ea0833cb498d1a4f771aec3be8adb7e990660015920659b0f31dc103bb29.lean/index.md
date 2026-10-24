# Verification target: GRWTSK.Algebra.LinearAlgebra.Diagonal.Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51fa85612f676d5d90000424205860a5b8792932",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51fa85612f676d5d90000424205860a5b8792932`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [proj_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/proj-diagonal--e7dde3eb6c57f40e18f93ec5.md) | 33 | `result-track:e7dde3eb6c57f40e18f93ec502afc0383a0ea4a4b0491b534ae23093e61b1d3e` |
| 2 | `theorem` | [diagonal_comp_single](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/diagonal-comp-single--d83376630c10a8d863c5e23a.md) | 36 | `result-track:d83376630c10a8d863c5e23aa5715b25d7672c8c16393ffc16231178c9577a43` |
| 3 | `theorem` | [diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/diagonal-tolin--e3f2181b00269e6497466356.md) | 41 | `result-track:e3f2181b00269e6497466356cc071377df6edad8d9cad82fce7b2272cef5b665` |
| 4 | `theorem` | [ker_diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/ker-diagonal-tolin--635dbab6bf27d38c497f2fc4.md) | 52 | `result-track:635dbab6bf27d38c497f2fc40ac2fd746d3b4141c94e21dbbbb20954868d36c7` |
| 5 | `theorem` | [range_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/range-diagonal--1bde1c9622ec3f5292440ab0.md) | 62 | `result-track:1bde1c9622ec3f5292440ab044738d239be0461ade5b02eb33d7ce1bd12c780c` |
| 6 | `theorem` | [rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant8f24ea0833cb498d1a4f771aec3be8adb7e990660015920659b0f31dc103bb29.lean/declarations/rank-diagonal--78f08c0b29f34d321f388028.md) | 80 | `result-track:78f08c0b29f34d321f38802859dda432a78651c9fdc2f4d8e740b8dcfc40f632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
