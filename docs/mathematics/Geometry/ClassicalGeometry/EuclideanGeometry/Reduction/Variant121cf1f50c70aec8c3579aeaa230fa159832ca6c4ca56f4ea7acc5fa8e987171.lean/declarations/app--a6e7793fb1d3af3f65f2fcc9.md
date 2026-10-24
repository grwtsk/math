# app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4fc5eb9-1b90-1ab7-1d8b-e499b07104e0",
  "kind": "theorem",
  "lexical_name": "app",
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
  "slug": "app--a6e7793fb1d3af3f65f2fcc9",
  "source": {
    "blob": "a6cbd340f9df797ff76c1a07356adbf10bb0c056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 154,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e7793fb1d3af3f65f2fcc98718958fa5bbf0218c65f1c9c83b99ff6b2c3608",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4fc5eb9-1b90-1ab7-1d8b-e499b07104e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app (hf : Reduces f f') (ha : Reduces a a') :
    Reduces (.app f a) (.app f' a') := by
  exact (hf.lift (fun x => Expr.app x a) (fun _ _ h => Beta.app_left h)).trans
    (ha.lift (fun x => Expr.app f' x) (fun _ _ h => Beta.app_right h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Reduction/Variant121cf1f50c70aec8c3579aeaa230fa159832ca6c4ca56f4ea7acc5fa8e987171.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6cbd340f9df797ff76c1a07356adbf10bb0c056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
