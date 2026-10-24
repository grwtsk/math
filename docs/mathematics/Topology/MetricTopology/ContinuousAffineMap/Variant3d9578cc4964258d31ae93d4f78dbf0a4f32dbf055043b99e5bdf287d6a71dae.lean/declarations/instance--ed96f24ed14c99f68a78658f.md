# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fe9b083ce33aacb6cd2f00883f467927f3bc52c1918f3ee96aec768b2a2462e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ed96f24ed14c99f68a78658f",
  "source": {
    "blob": "d8b49892f12821ace044443b8061b099706c5450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 77,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed96f24ed14c99f68a78658f2e7c7f09b78f0196e52a108d8b2cc68c5f90d355",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fe9b083ce33aacb6cd2f00883f467927f3bc52c1918f3ee96aec768b2a2462e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : SeminormedAddCommGroup (V →ᴬ[𝕜] W) where
  dist_eq _ _ := dist_eq_norm_neg_add (E := W × (V →L[𝕜] W)) _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b49892f12821ace044443b8061b099706c5450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
