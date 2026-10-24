# ΓRestrictAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95156af69ed70e8ebee9c09728981e4ba9221bbc9a5f41ec4ad3078e565b3e41",
  "kind": "instance",
  "lexical_name": "ΓRestrictAlgebra",
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
  "slug": "restrictalgebra--ee144f9a726fe28b7416e6e6",
  "source": {
    "blob": "7419be8a90ea807aa3d0f0926d47c4493835a7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 548,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee144f9a726fe28b7416e6e6bf28a1a7400d0540339a93529e28c35815d47ebb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95156af69ed70e8ebee9c09728981e4ba9221bbc9a5f41ec4ad3078e565b3e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ΓRestrictAlgebra {X : Scheme} {Y : TopCat} {f : Y ⟶ X} (hf : OpenEmbedding f) :
    Algebra (Scheme.Γ.obj (op X)) (Scheme.Γ.obj (op <| X.restrict hf)) :=
  (Scheme.Γ.map (X.ofRestrict hf).op).toAlgebra
#align algebraic_geometry.Γ_restrict_algebra AlgebraicGeometry.ΓRestrictAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7419be8a90ea807aa3d0f0926d47c4493835a7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
