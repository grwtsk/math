# exists_clopen_upper_or_lower_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d89c1fb-80b9-91bd-d168-33c527ec51fd",
  "kind": "theorem",
  "lexical_name": "exists_clopen_upper_or_lower_of_ne",
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
  "slug": "exists-clopen-upper-or-lower-of-ne--eef497d93f7c54f19ae6c6b5",
  "source": {
    "blob": "37793a3abcb56a207fbba0af1eaea1db1581bb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef497d93f7c54f19ae6c6b5c3da1ed49860606c155f7e2a310e2573c6f28dae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d89c1fb-80b9-91bd-d168-33c527ec51fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_clopen_upper_or_lower_of_ne (h : x ≠ y) :
    ∃ U : Set α, IsClopen U ∧ (IsUpperSet U ∨ IsLowerSet U) ∧ x ∈ U ∧ y ∉ U := by
  obtain h | h := h.not_le_or_not_le
  · exact (exists_clopen_upper_of_not_le h).imp fun _ ↦ And.imp_right <| And.imp_left Or.inl
  · obtain ⟨U, hU, hU', hy, hx⟩ := exists_clopen_lower_of_not_le h
    exact ⟨U, hU, Or.inr hU', hx, hy⟩
#align exists_clopen_upper_or_lower_of_ne exists_clopen_upper_or_lower_of_ne

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37793a3abcb56a207fbba0af1eaea1db1581bb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
