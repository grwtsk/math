# isTopCompl_iff_isCompl_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ed4f92-1989-88cf-1b6d-1efdbb77e13b",
  "kind": "theorem",
  "lexical_name": "isTopCompl_iff_isCompl_isClosed",
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
  "slug": "istopcompl-iff-iscompl-isclosed--57d4fc4aa61a88dec25d9170",
  "source": {
    "blob": "ec9768b74112da04c0e7eeb5f4539814304c852f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant5cec50a6c2246056a6173678cd0dcfc5a457a0a8dd0bd94b7489876868bc16a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d4fc4aa61a88dec25d917022dc729315a815503736be60cab8d407b84c647d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variant5cec50a6c2246056a6173678cd0dcfc5a457a0a8dd0bd94b7489876868bc16a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ed4f92-1989-88cf-1b6d-1efdbb77e13b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopCompl_iff_isCompl_isClosed :
    IsTopCompl p q ↔ IsCompl p q ∧ IsClosed (p : Set E) ∧ IsClosed (q : Set E) :=
  ⟨fun h ↦ ⟨h.isCompl, h.isClosed, h.isClosed'⟩, fun h ↦ h.1.isTopCompl_of_isClosed h.2.1 h.2.2⟩

variable (p q)

/-- If `q` is a closed complement of a closed subspace `p`, then `p × q` is continuously
isomorphic to `E`. -/
@[deprecated prodEquivOfIsTopCompl (since := "2026-06-07")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variant5cec50a6c2246056a6173678cd0dcfc5a457a0a8dd0bd94b7489876868bc16a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variant5cec50a6c2246056a6173678cd0dcfc5a457a0a8dd0bd94b7489876868bc16a9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9768b74112da04c0e7eeb5f4539814304c852f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
