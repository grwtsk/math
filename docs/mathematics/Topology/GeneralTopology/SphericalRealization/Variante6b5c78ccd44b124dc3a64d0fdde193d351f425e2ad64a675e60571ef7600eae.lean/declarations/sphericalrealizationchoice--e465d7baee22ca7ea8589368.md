# SphericalRealizationChoice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30d58b10b41037fda1a7142d1b778b4cdfb1003d14c46f0ba7e4448abb2f0064",
  "kind": "inductive",
  "lexical_name": "SphericalRealizationChoice",
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
  "slug": "sphericalrealizationchoice--e465d7baee22ca7ea8589368",
  "source": {
    "blob": "2f2209c8c4a9eb0b82a12dcf57bbe09cb33f2800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/SphericalRealization/Variante6b5c78ccd44b124dc3a64d0fdde193d351f425e2ad64a675e60571ef7600eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e465d7baee22ca7ea85893684816d6c620e6a83ab08e7c98e926a970508599cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SphericalRealization/Variante6b5c78ccd44b124dc3a64d0fdde193d351f425e2ad64a675e60571ef7600eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30d58b10b41037fda1a7142d1b778b4cdfb1003d14c46f0ba7e4448abb2f0064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SphericalRealizationChoice
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2})
    (S3 : Sphere3Carrier.{u3}) where
  | sphere2 : InjectiveS2Realization R S2 →
      SphericalRealizationChoice R S2 S3
  | sphere3 : InjectiveS3Realization R S3 →
      SphericalRealizationChoice R S2 S3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SphericalRealization/Variante6b5c78ccd44b124dc3a64d0fdde193d351f425e2ad64a675e60571ef7600eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SphericalRealization/Variante6b5c78ccd44b124dc3a64d0fdde193d351f425e2ad64a675e60571ef7600eae.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2209c8c4a9eb0b82a12dcf57bbe09cb33f2800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
