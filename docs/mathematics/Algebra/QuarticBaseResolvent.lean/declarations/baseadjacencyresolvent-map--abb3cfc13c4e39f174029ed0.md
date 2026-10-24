# baseAdjacencyResolvent_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfa44686c0fe9b8a12b60153737f3d2f43752be5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/Algebra/QuarticBaseResolvent.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:360b0c24-ca31-6f2c-d8eb-9c2cbc273551",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96f3f7f2-b0b3-e972-0a8f-19ffc7bb36b5",
  "kind": "theorem",
  "lexical_name": "baseAdjacencyResolvent_map",
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
  "slug": "baseadjacencyresolvent-map--abb3cfc13c4e39f174029ed0",
  "source": {
    "blob": "dfa44686c0fe9b8a12b60153737f3d2f43752be5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Algebra/QuarticBaseResolvent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb3cfc13c4e39f174029ed08b9911c6b79cc4ed869468daa3bf1a60ef80ba64",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticBaseResolvent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96f3f7f2-b0b3-e972-0a8f-19ffc7bb36b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseAdjacencyResolvent_map (A B C₀ D : K) :
    (baseAdjacencyResolvent A B C₀ D).map (algebraMap K L) =
      adjacencyResolventOfMonicCoefficients
        (algebraMap K L A) (algebraMap K L B)
        (algebraMap K L C₀) (algebraMap K L D) := by
  exact baseAdjacencyResolvent_ringHom_map (f := algebraMap K L) A B C₀ D

/-- A factored actual monic quartic has an adjacency cubic obtained by
scalar extension from K; the chosen ordering is auxiliary, not part of
the base-field polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticBaseResolvent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticBaseResolvent.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa44686c0fe9b8a12b60153737f3d2f43752be5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
