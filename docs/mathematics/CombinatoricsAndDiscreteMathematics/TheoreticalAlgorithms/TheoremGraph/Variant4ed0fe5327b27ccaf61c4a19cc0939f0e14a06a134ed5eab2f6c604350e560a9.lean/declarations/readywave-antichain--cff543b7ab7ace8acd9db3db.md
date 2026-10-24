# readyWave_antichain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f516afa69b7859b58cb244def68a59bbbc3577e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1048a424-d65f-544e-2ebe-6861955271dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b716f627-c6ad-22dd-1d33-e3cce3705c44",
  "kind": "theorem",
  "lexical_name": "readyWave_antichain",
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
  "slug": "readywave-antichain--cff543b7ab7ace8acd9db3db",
  "source": {
    "blob": "0f516afa69b7859b58cb244def68a59bbbc3577e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff543b7ab7ace8acd9db3dbb7524b576601c945db3baaf502d72f8946a1fd3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b716f627-c6ad-22dd-1d33-e3cce3705c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readyWave_antichain
    (graph : ForwardDependencyGraph)
    {visited : graph.Node → Prop}
    (closed : graph.DependencyClosed visited)
    {left right : graph.Node}
    (leftReady : graph.Ready visited left)
    (rightReady : graph.Ready visited right) :
    ¬ graph.DependsTransitively left right := by
  intro path
  have rightPredecessorVisited : visited left := by
    cases path with
    | direct edge => exact rightReady.2 _ edge
    | step pathToMiddle edge =>
        exact graph.visited_of_path_to_visited closed pathToMiddle (rightReady.2 _ edge)
  exact leftReady.1 rightPredecessorVisited

end ForwardDependencyGraph

/-- Top-level RTH-07 entry point for the ranked-DAG acyclicity theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f516afa69b7859b58cb244def68a59bbbc3577e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
