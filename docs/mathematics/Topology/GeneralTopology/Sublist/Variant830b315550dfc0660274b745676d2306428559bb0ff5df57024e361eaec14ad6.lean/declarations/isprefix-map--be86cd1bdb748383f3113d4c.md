# IsPrefix.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3455b46-a377-727f-fc35-b1e65e7b47bf",
  "kind": "theorem",
  "lexical_name": "IsPrefix.map",
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
  "slug": "isprefix-map--be86cd1bdb748383f3113d4c",
  "source": {
    "blob": "3048636ccb16906cf91c4310c0f9f85fcfc54623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1226,
    "line": 1220,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be86cd1bdb748383f3113d4c5eb21ecf4053c0c1ec305cb2f71b31dc3da036d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3455b46-a377-727f-fc35-b1e65e7b47bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1220–1226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind ←] theorem IsPrefix.map {β} (f : α → β) ⦃l₁ l₂ : List α⦄ (h : l₁ <+: l₂) : l₁.map f <+: l₂.map f := by
  obtain ⟨r, rfl⟩ := h
  rw [map_append]; apply prefix_append

grind_pattern IsPrefix.map => l₁ <+: l₂, l₁.map f
grind_pattern IsPrefix.map => l₁ <+: l₂, l₂.map f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean#L1220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3048636ccb16906cf91c4310c0f9f85fcfc54623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
