# isExtreme

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdeb577ac628930e650069fff67d7e1228380155",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51edf6ca-9e2e-aca9-ebdc-63a29a5f7b7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82d3e708-04a1-2076-0fdb-c2c35cc59f31",
  "kind": "theorem",
  "lexical_name": "isExtreme",
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
  "slug": "isextreme--b69badfe2263a4348fa99e15",
  "source": {
    "blob": "cdeb577ac628930e650069fff67d7e1228380155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69badfe2263a4348fa99e1569be254e9c27d1d278c35ac0b05e66293e049462",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d3e708-04a1-2076-0fdb-c2c35cc59f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isExtreme (hAB : IsExposed 𝕜 A B) : IsExtreme 𝕜 A B := by
  refine' ⟨hAB.subset, fun x₁ hx₁A x₂ hx₂A x hxB hx => _⟩
  obtain ⟨l, rfl⟩ := hAB ⟨x, hxB⟩
  have hl : ConvexOn 𝕜 univ l := l.toLinearMap.convexOn convex_univ
  have hlx₁ := hxB.2 x₁ hx₁A
  have hlx₂ := hxB.2 x₂ hx₂A
  refine' ⟨⟨hx₁A, fun y hy => _⟩, ⟨hx₂A, fun y hy => _⟩⟩
  · rw [hlx₁.antisymm (hl.le_left_of_right_le (mem_univ _) (mem_univ _) hx hlx₂)]
    exact hxB.2 y hy
  · rw [hlx₂.antisymm (hl.le_right_of_left_le (mem_univ _) (mem_univ _) hx hlx₁)]
    exact hxB.2 y hy
#align is_exposed.is_extreme IsExposed.isExtreme

end IsExposed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeb577ac628930e650069fff67d7e1228380155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
