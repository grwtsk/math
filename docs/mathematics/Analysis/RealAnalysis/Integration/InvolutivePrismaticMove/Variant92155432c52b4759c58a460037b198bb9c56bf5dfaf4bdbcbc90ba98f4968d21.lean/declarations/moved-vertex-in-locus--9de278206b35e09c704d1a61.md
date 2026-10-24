# moved_vertex_in_locus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff19f6ea-e0a4-e427-888f-fca2d5c4cf62",
  "kind": "theorem",
  "lexical_name": "moved_vertex_in_locus",
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
  "slug": "moved-vertex-in-locus--9de278206b35e09c704d1a61",
  "source": {
    "blob": "ef72713a96accfe794efea55ce2b3b490d929ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant92155432c52b4759c58a460037b198bb9c56bf5dfaf4bdbcbc90ba98f4968d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de278206b35e09c704d1a61de9e4729493d99def5e29e756dc2320491072a45",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant92155432c52b4759c58a460037b198bb9c56bf5dfaf4bdbcbc90ba98f4968d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff19f6ea-e0a4-e427-888f-fca2d5c4cf62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moved_vertex_in_locus
    (move : InvolutivePrismaticMove G V F P before after)
    {v : V} (hv : v ∈ move.involution.support) :
    move.terrainMove.vertexGlobal v ∈
      move.terrainMove.locus.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact move.supportInsideLocus v hv

/-- The Boolean matrix is exactly the realization of the stored involution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant92155432c52b4759c58a460037b198bb9c56bf5dfaf4bdbcbc90ba98f4968d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant92155432c52b4759c58a460037b198bb9c56bf5dfaf4bdbcbc90ba98f4968d21.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef72713a96accfe794efea55ce2b3b490d929ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
