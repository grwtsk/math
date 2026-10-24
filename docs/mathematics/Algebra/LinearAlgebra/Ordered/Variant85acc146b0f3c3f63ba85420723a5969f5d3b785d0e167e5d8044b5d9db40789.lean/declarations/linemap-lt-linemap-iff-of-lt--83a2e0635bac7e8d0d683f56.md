# lineMap_lt_lineMap_iff_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fc352fa-ee74-1e80-47e8-4b5562c94079",
  "kind": "theorem",
  "lexical_name": "lineMap_lt_lineMap_iff_of_lt",
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
  "slug": "linemap-lt-linemap-iff-of-lt--83a2e0635bac7e8d0d683f56",
  "source": {
    "blob": "25583bc201972a10df50d9c5476a5b8591b9a121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a2e0635bac7e8d0d683f56468140d81d8e74559e1347e57dce59cbd7ac1fe1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fc352fa-ee74-1e80-47e8-4b5562c94079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineMap_lt_lineMap_iff_of_lt (h : r < r') : lineMap a b r < lineMap a b r' ↔ a < b := by
  simp only [lineMap_apply_module]
  rw [← lt_sub_iff_add_lt, add_sub_assoc, ← sub_lt_iff_lt_add', ← sub_smul, ← sub_smul,
    sub_sub_sub_cancel_left, smul_lt_smul_iff_of_pos (sub_pos.2 h)]
#align line_map_lt_line_map_iff_of_lt lineMap_lt_lineMap_iff_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25583bc201972a10df50d9c5476a5b8591b9a121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
