# ContinuousMapZero.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d74a5c649a455ddb7d7e533e21b62eef1bdbe88e617e4d2025713e371ee103d4",
  "kind": "class",
  "lexical_name": "ContinuousMapZero.UniqueHom",
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
  "slug": "continuousmapzero-uniquehom--08331e77c6b50fd078e49a2d",
  "source": {
    "blob": "d5b8be2ff6a62665311738463360b43b972982a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08331e77c6b50fd078e49a2df71dd633631512d087a383f184e02070d1878941",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d74a5c649a455ddb7d7e533e21b62eef1bdbe88e617e4d2025713e371ee103d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousMapZero.UniqueHom (R A : Type*) [CommSemiring R] [StarRing R]
    [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [NonUnitalRing A] [StarRing A]
    [TopologicalSpace A] [Module R A] [IsScalarTower R A A] [SMulCommClass R A A] : Prop where
  eq_of_continuous_of_map_id (s : Set R) [CompactSpace s] [Fact (0 ∈ s)]
    (φ ψ : C(s, R)₀ →⋆ₙₐ[R] A) (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (.id s) = ψ (.id s)) :
    φ = ψ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b8be2ff6a62665311738463360b43b972982a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
