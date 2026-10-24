# specTargetImageRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eaa04aefffdb3502b65d5d83cbc282d6f1c16a31de7b96dfd5ef12700cf84ab",
  "kind": "def",
  "lexical_name": "specTargetImageRingHom",
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
  "slug": "spectargetimageringhom--8a080557b8056105eb3f9dce",
  "source": {
    "blob": "c7680e28662a38691282f29c9258387d17f22a59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1133,
    "line": 1129,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a080557b8056105eb3f9dceb25d750bf21f4e93afc5a9896ce2c7f01424f385",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eaa04aefffdb3502b65d5d83cbc282d6f1c16a31de7b96dfd5ef12700cf84ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1129–1133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specTargetImageRingHom (f : X ⟶ Spec A) : A ⟶ specTargetImage f :=
  CommRingCat.ofHom (Ideal.Quotient.mk (specTargetImageIdeal f))

variable (f : X ⟶ Spec A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean#L1129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7680e28662a38691282f29c9258387d17f22a59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
