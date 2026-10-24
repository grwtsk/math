# Convex.convex_remove_iff_notMem_convexHull_remove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "872edb320e7882d142dba6d3a9785ab97556157d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75f6843d-4f73-e3c4-6a86-5178a723f3a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74419903-8a38-2410-80dc-b8900bf2fe7b",
  "kind": "theorem",
  "lexical_name": "Convex.convex_remove_iff_notMem_convexHull_remove",
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
  "slug": "convex-convex-remove-iff-notmem-convexhull-remove--a4dd00c847d73e90f0b1e330",
  "source": {
    "blob": "872edb320e7882d142dba6d3a9785ab97556157d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 122,
    "path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4dd00c847d73e90f0b1e330c38dd69a0d4cb31c49da5a074c75f488c50fbd91",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74419903-8a38-2410-80dc-b8900bf2fe7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.convex_remove_iff_notMem_convexHull_remove {s : Set E} (hs : Convex 𝕜 s) (x : E) :
    Convex 𝕜 (s \ {x}) ↔ x ∉ convexHull 𝕜 (s \ {x}) := by
  constructor
  · rintro hsx hx
    rw [hsx.convexHull_eq] at hx
    exact hx.2 (mem_singleton _)
  rintro hx
  suffices h : s \ {x} = convexHull 𝕜 (s \ {x}) by
    rw [h]
    exact convex_convexHull 𝕜 _
  exact
    Subset.antisymm (subset_convexHull 𝕜 _) fun y hy =>
      ⟨convexHull_min diff_subset hs hy, by
        rintro (rfl : y = x)
        exact hx hy⟩

@[deprecated (since := "2025-05-23")]
alias Convex.convex_remove_iff_not_mem_convexHull_remove :=
  Convex.convex_remove_iff_notMem_convexHull_remove

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872edb320e7882d142dba6d3a9785ab97556157d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
