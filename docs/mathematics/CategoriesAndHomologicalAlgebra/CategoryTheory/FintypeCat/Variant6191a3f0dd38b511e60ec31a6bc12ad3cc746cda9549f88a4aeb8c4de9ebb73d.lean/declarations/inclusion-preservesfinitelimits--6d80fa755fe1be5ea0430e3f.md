# inclusion_preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ae5ba76ae43c050330c0e1e195e0634c9a170af496b46823f8d523ebf621e61",
  "kind": "instance",
  "lexical_name": "inclusion_preservesFiniteLimits",
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
  "slug": "inclusion-preservesfinitelimits--6d80fa755fe1be5ea0430e3f",
  "source": {
    "blob": "897dbe57763da543323cb5530d13c8d8f08b9427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d80fa755fe1be5ea0430e3fa2d3d8dc6ec3ff63e764db47ed488f615cc5d74a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ae5ba76ae43c050330c0e1e195e0634c9a170af496b46823f8d523ebf621e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance inclusion_preservesFiniteLimits :
    PreservesFiniteLimits FintypeCat.incl.{u} where
  preservesFiniteLimits _ :=
    preservesLimitOfShape_of_createsLimitsOfShape_and_hasLimitsOfShape FintypeCat.incl

/- Help typeclass inference to infer preservation of finite limits for the forgtful functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `897dbe57763da543323cb5530d13c8d8f08b9427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
