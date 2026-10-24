# natAbs_sub_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce8f76e7-4434-dbc7-3874-53c5517009a4",
  "kind": "theorem",
  "lexical_name": "natAbs_sub_ne_zero_iff",
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
  "slug": "natabs-sub-ne-zero-iff--e5a0798214cb22ba6e9b2b89",
  "source": {
    "blob": "4c686c1db9e7870d77f78630e7f0f5e8326a7c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a0798214cb22ba6e9b2b8901e6bb928b28e8202a734c2995a89b2e55c6045e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8f76e7-4434-dbc7-3874-53c5517009a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_sub_ne_zero_iff {i j : ℤ} : natAbs (i - j) ≠ 0 ↔ i ≠ j :=
  Nat.ne_zero_iff_zero_lt.trans natAbs_sub_pos_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c686c1db9e7870d77f78630e7f0f5e8326a7c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
