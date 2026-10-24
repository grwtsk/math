# dist_sConvexComb_left_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3caf5889-f444-2f97-487b-d0ed4eef8cc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0674e5dd-204d-35ac-9075-0842aa69e378",
  "kind": "lemma",
  "lexical_name": "dist_sConvexComb_left_le",
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
  "slug": "dist-sconvexcomb-left-le--fbb7a5399985ab2cd0685555",
  "source": {
    "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 84,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb7a5399985ab2cd0685555dfb23c0ca4debbade70d8273efd64996b2ec3778",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0674e5dd-204d-35ac-9075-0842aa69e378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_sConvexComb_left_le (f : StdSimplex ℝ X) (x : X) :
    dist f.sConvexComb x ≤ f.iConvexComb (dist · x) := by
  simpa using dist_iConvexComb_left_le f id x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f646d1821791679b7ea52cad2aff5e09b7af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
