# map_subtype_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cd8a4d3-63da-fba5-2d44-00bdd9a2b406",
  "kind": "theorem",
  "lexical_name": "map_subtype_le",
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
  "slug": "map-subtype-le--ed19ee1c5fc675ae0fff3ccc",
  "source": {
    "blob": "1ac1172e7365c95125145532db35efd3059e6de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1639,
    "line": 1633,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed19ee1c5fc675ae0fff3ccc9ccbf36611ef9d893d934d73b9dd083d53479126",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cd8a4d3-63da-fba5-2d44-00bdd9a2b406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1633–1639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subtype_le (p' : Submodule R p) : map p.subtype p' ≤ p := by
  simpa using (map_le_range : map p.subtype p' ≤ range p.subtype)
#align submodule.map_subtype_le Submodule.map_subtype_le

/-- Under the canonical linear map from a submodule `p` to the ambient space `M`, the image of the
maximal submodule of `p` is just `p `. -/
-- @[simp] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean#L1633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac1172e7365c95125145532db35efd3059e6de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
