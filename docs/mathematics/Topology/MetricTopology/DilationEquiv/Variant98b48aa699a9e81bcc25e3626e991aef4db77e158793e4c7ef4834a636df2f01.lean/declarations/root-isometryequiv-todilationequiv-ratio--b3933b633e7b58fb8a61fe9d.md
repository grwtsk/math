# _root_.IsometryEquiv.toDilationEquiv_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dec482cfb7251f204a211d2f99c67a3aeb822478",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84567e74-dab6-b61b-37c0-9c6209120409",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57c40934-b2dc-9a54-a93b-4ca60409edf6",
  "kind": "lemma",
  "lexical_name": "_root_.IsometryEquiv.toDilationEquiv_ratio",
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
  "slug": "root-isometryequiv-todilationequiv-ratio--b3933b633e7b58fb8a61fe9d",
  "source": {
    "blob": "dec482cfb7251f204a211d2f99c67a3aeb822478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 222,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3933b633e7b58fb8a61fe9dc650b1d7142b872e27f56e9de3fc348b42d8ca14",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c40934-b2dc-9a54-a93b-4ca60409edf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsometryEquiv.toDilationEquiv_ratio (e : X ≃ᵢ Y) : ratio e.toDilationEquiv = 1 := by
  rw [← ratio_toDilation, IsometryEquiv.toDilationEquiv_toDilation, Isometry.toDilation_ratio]

/-- Reinterpret a `DilationEquiv` as a homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec482cfb7251f204a211d2f99c67a3aeb822478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
