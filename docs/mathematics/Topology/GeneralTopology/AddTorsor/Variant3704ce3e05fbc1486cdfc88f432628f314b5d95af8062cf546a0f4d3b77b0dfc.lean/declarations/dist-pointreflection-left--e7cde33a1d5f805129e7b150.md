# dist_pointReflection_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a541b426-e04f-18ff-fcc1-5f16e6b5116a",
  "kind": "theorem",
  "lexical_name": "dist_pointReflection_left",
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
  "slug": "dist-pointreflection-left--e7cde33a1d5f805129e7b150",
  "source": {
    "blob": "bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7cde33a1d5f805129e7b150868dbc2eda47df4b239bfd387894e38e821665c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a541b426-e04f-18ff-fcc1-5f16e6b5116a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem dist_pointReflection_left (p q : P) :
    dist (Equiv.pointReflection p q) p = dist p q := by
  simp [dist_eq_norm_vsub V, Equiv.pointReflection_vsub_left (G := V)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
