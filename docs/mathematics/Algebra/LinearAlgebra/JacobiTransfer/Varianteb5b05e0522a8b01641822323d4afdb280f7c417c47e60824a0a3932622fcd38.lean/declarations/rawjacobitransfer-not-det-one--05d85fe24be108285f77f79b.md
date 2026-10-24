# rawJacobiTransfer_not_det_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8201fe12-586d-2ef0-72d8-1621b09b9c2e",
  "kind": "theorem",
  "lexical_name": "rawJacobiTransfer_not_det_one",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rawjacobitransfer-not-det-one--05d85fe24be108285f77f79b",
  "source": {
    "blob": "724dce41da89e50f002a8c96c9cbbca462be8018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05d85fe24be108285f77f79b76b6fb2a3a2730865c1f406ab00d6258b2f22bd5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8201fe12-586d-2ef0-72d8-1621b09b9c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawJacobiTransfer_not_det_one :
    (rawJacobiTransfer (0 : ℚ) 0 1 2).det = 2 ∧
      (rawJacobiTransfer (0 : ℚ) 0 1 2).det ≠ 1 := by
  norm_num [det_rawJacobiTransfer]

/-- Hostile fixture: common `SL₂` syntax does not identify two transfer matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724dce41da89e50f002a8c96c9cbbca462be8018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
