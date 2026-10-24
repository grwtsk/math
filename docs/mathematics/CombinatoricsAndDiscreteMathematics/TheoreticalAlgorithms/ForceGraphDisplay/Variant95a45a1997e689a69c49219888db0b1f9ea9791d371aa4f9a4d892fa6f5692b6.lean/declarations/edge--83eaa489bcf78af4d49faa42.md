# Edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0546fd3e97a78a5e7e4189ec8cdc41dddaf8accee95ca42f2b4b74fa9ce3b26",
  "kind": "structure",
  "lexical_name": "Edge",
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
  "slug": "edge--83eaa489bcf78af4d49faa42",
  "source": {
    "blob": "6abe28747de1a71c635db81784e3878219b1cfbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant95a45a1997e689a69c49219888db0b1f9ea9791d371aa4f9a4d892fa6f5692b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83eaa489bcf78af4d49faa4233ef8e188378747fc3745e34ceafdc7de51c7bf1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant95a45a1997e689a69c49219888db0b1f9ea9791d371aa4f9a4d892fa6f5692b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0546fd3e97a78a5e7e4189ec8cdc41dddaf8accee95ca42f2b4b74fa9ce3b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Edge where
  /-- Source vertex. Must match the `id` of one of the vertices. -/
  source : String
  /-- Target vertex. Must match the `id` of one of the vertices. -/
  target : String
  /-- Extra attributes to set on the SVG `<line>` element representing this edge.
  See also `Props.defaultEdgeAttrs`. -/
  attrs : Array (String × Json) := #[]
  /-- If present, the label is shown over the edge midpoint.
  This must be an SVG element.
  Use `<foreignObject>` to draw non-SVG elements. -/
  label? : Option Html := none
  /-- Details are shown below the graph display
  after the edge has been clicked.
  See also `Props.showDetails`. -/
  details? : Option Html := none
  deriving Inhabited, RpcEncodable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant95a45a1997e689a69c49219888db0b1f9ea9791d371aa4f9a4d892fa6f5692b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant95a45a1997e689a69c49219888db0b1f9ea9791d371aa4f9a4d892fa6f5692b6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6abe28747de1a71c635db81784e3878219b1cfbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
