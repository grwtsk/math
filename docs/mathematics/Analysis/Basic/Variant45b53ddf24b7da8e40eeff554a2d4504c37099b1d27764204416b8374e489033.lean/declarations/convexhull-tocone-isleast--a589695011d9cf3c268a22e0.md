# convexHull_toCone_isLeast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 686,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eff2ea93-8015-d451-47a8-2ceaedf3fed4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94d65a29-ad52-62ad-41fe-26fb3a552db3",
  "kind": "theorem",
  "lexical_name": "convexHull_toCone_isLeast",
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
  "slug": "convexhull-tocone-isleast--a589695011d9cf3c268a22e0",
  "source": {
    "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 686,
    "path": "GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a589695011d9cf3c268a22e037eb86c57c528201d85a471521f04a49921cc363",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d65a29-ad52-62ad-41fe-26fb3a552db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_toCone_isLeast (s : Set E) :
    IsLeast { t : ConvexCone 𝕜 E | s ⊆ t } ((convex_convexHull 𝕜 s).toCone _) := by
  convert (convex_convexHull 𝕜 s).toCone_isLeast using 1
  ext t
  exact ⟨fun h => convexHull_min h t.convex, (subset_convexHull 𝕜 s).trans⟩
#align convex_hull_to_cone_is_least convexHull_toCone_isLeast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
