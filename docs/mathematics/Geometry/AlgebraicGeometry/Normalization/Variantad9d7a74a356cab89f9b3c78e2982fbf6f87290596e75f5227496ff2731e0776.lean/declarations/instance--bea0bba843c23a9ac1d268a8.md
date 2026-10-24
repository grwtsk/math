# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2d0efd151ec7ddcd78ed325821a3e8973292514f96c7059f72d603dca92c2fe",
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
  "slug": "instance--bea0bba843c23a9ac1d268a8",
  "source": {
    "blob": "5ae53fc5e8b129ad008bb61b2d33ac664b547236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 312,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bea0bba843c23a9ac1d268a8444380e05f2eae88eaa3e8182b1a85a2046dc032",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2d0efd151ec7ddcd78ed325821a3e8973292514f96c7059f72d603dca92c2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsAffineHom f] : IsAffineHom f.toNormalization := by
  apply MorphismProperty.of_postcomp (W := @IsAffineHom) (W' := @IsSeparated) _ f.fromNormalization
  · infer_instance
  · rw [Hom.toNormalization_fromNormalization]
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae53fc5e8b129ad008bb61b2d33ac664b547236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
