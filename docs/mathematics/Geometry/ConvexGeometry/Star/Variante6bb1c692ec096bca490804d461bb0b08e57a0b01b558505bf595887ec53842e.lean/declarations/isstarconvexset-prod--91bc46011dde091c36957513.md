# IsStarConvexSet.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acd35625-a514-646b-ab2e-f51fec60811b",
  "kind": "lemma",
  "lexical_name": "IsStarConvexSet.prod",
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
  "slug": "isstarconvexset-prod--91bc46011dde091c36957513",
  "source": {
    "blob": "ef5c08774d08e306ba00681372db83124eb66868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91bc46011dde091c369575139ef4f3ee44a9b1ba42de9033fbae941ae0df26ca",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd35625-a514-646b-ab2e-f51fec60811b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsStarConvexSet.prod {t : Set Y} {y : Y} (hs : IsStarConvexSet R x s)
    (ht : IsStarConvexSet R y t) : IsStarConvexSet R (x, y) (s ×ˢ t) := by
  rintro ⟨w, z⟩ ⟨hw, hz⟩ a b ha hb hab; exact ⟨by simpa using hs hw _ .., by simpa using ht hz _ ..⟩

@[grind ←]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Star/Variante6bb1c692ec096bca490804d461bb0b08e57a0b01b558505bf595887ec53842e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5c08774d08e306ba00681372db83124eb66868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
