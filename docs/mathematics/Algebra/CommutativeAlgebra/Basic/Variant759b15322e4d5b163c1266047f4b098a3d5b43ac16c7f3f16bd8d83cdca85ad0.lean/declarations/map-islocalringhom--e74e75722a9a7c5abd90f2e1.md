# map.isLocalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5af392402e7e77ff47e3d8c4dea331573909ebaf2d85f5f4755154e5e4127602",
  "kind": "instance",
  "lexical_name": "map.isLocalRingHom",
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
  "slug": "map-islocalringhom--e74e75722a9a7c5abd90f2e1",
  "source": {
    "blob": "1a6666eebcbad8083bd16dbb18992385b8506479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2065,
    "line": 2060,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e74e75722a9a7c5abd90f2e1edf2624d03240ac29db604f64cd8d0676c551825",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5af392402e7e77ff47e3d8c4dea331573909ebaf2d85f5f4755154e5e4127602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2060–2065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance map.isLocalRingHom : IsLocalRingHom (map f) :=
  MvPowerSeries.map.isLocalRingHom f
#align power_series.map.is_local_ring_hom PowerSeries.map.isLocalRingHom

variable [LocalRing R] [LocalRing S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant759b15322e4d5b163c1266047f4b098a3d5b43ac16c7f3f16bd8d83cdca85ad0.lean#L2060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a6666eebcbad8083bd16dbb18992385b8506479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
