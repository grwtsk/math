# positiveOneCell_injective_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:870d0b84-0d69-7c69-2393-1ed23aa64fcd",
  "kind": "theorem",
  "lexical_name": "positiveOneCell_injective_interior",
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
  "slug": "positiveonecell-injective-interior--9968c6abab9209d240a44cda",
  "source": {
    "blob": "fd33f52fc5fdd60725282a01f8b4d4e20d8464f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9968c6abab9209d240a44cda7fcb94be60043817e04b2bdd63fdf9850b639aa3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:870d0b84-0d69-7c69-2393-1ed23aa64fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOneCell_injective_interior (k : ℕ)
    (h : Handle k) (i : Fin 2)
    {t u : unitInterval} (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h i u) :
    t = u := by
  have hsource :=
    positive_interior_projection_eq_source k h h i i t u ht heq
  exact congrArg Prod.snd hsource

/-- Pairwise distinct positive edge labels cannot share any
nonendpoint image in the actual paired boundary quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd33f52fc5fdd60725282a01f8b4d4e20d8464f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
