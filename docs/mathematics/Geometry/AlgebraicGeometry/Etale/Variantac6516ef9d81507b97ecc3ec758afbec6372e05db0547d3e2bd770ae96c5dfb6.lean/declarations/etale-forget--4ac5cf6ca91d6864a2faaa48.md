# Etale.forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd01825259daa624424860ce0fe7d6193e402f645061acd3fc0e838e60cb824e",
  "kind": "def",
  "lexical_name": "Etale.forget",
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
  "slug": "etale-forget--4ac5cf6ca91d6864a2faaa48",
  "source": {
    "blob": "36edd9861dab45136afca516680113f48d5afa06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 95,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variantac6516ef9d81507b97ecc3ec758afbec6372e05db0547d3e2bd770ae96c5dfb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ac5cf6ca91d6864a2faaa486ddbd8186357142e90619e3990b5c82ce8af25ca",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variantac6516ef9d81507b97ecc3ec758afbec6372e05db0547d3e2bd770ae96c5dfb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd01825259daa624424860ce0fe7d6193e402f645061acd3fc0e838e60cb824e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Etale.forget : X.Etale ⥤ Over X :=
  MorphismProperty.Over.forget @IsEtale ⊤ X

/-- The forgetful functor from schemes étale over `X` to schemes over `X` is fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variantac6516ef9d81507b97ecc3ec758afbec6372e05db0547d3e2bd770ae96c5dfb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variantac6516ef9d81507b97ecc3ec758afbec6372e05db0547d3e2bd770ae96c5dfb6.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36edd9861dab45136afca516680113f48d5afa06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
