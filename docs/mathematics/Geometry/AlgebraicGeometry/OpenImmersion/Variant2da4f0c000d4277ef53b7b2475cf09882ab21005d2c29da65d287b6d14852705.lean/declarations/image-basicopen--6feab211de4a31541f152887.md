# image_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b5a95cde2e52256787a5d77014cc6bb79cfb9d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 843,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6abf02be-4b34-f164-964b-6355ee75aa6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccbdda00-a764-cb0e-cf18-cbc507550d42",
  "kind": "theorem",
  "lexical_name": "image_basicOpen",
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
  "slug": "image-basicopen--6feab211de4a31541f152887",
  "source": {
    "blob": "3b5a95cde2e52256787a5d77014cc6bb79cfb9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 843,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6feab211de4a31541f1528872384dcfc4152f351fef7ce0615f2e7a7ae722aab",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccbdda00-a764-cb0e-cf18-cbc507550d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_basicOpen {U : X.Opens} (r : Γ(X, U)) :
    f ''ᵁ X.basicOpen r = Y.basicOpen ((f.appIso U).inv r) := by
  have e := Scheme.preimage_basicOpen f ((f.appIso U).inv r)
  rw [Scheme.Hom.appIso_inv_app_apply, Scheme.basicOpen_res, inf_eq_right.mpr _] at e
  · rw [← e, f.image_preimage_eq_opensRange_inf, inf_eq_right]
    refine Set.Subset.trans (Scheme.basicOpen_le _ _) (Set.image_subset_range _ _)
  · exact (X.basicOpen_le r).trans (f.preimage_image_eq _).ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5a95cde2e52256787a5d77014cc6bb79cfb9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
