# AffineTargetMorphismProperty.diagonal_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:283892db13f82aa335806acbaf15c7d95902af81004fd66fae84e82e93ab7402",
  "kind": "instance",
  "lexical_name": "AffineTargetMorphismProperty.diagonal_respectsIso",
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
  "slug": "affinetargetmorphismproperty-diagonal-respectsiso--63518a769b036d021234299d",
  "source": {
    "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63518a769b036d021234299d8a1965be1d6638e663ea67e64666434aec28168e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:283892db13f82aa335806acbaf15c7d95902af81004fd66fae84e82e93ab7402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AffineTargetMorphismProperty.diagonal_respectsIso (P : AffineTargetMorphismProperty)
    [P.toProperty.RespectsIso] : P.diagonal.toProperty.RespectsIso := by
  delta AffineTargetMorphismProperty.diagonal
  apply AffineTargetMorphismProperty.respectsIso_mk
  · introv H _ _
    rw [pullback.mapDesc_comp, P.cancel_left_of_respectsIso, P.cancel_right_of_respectsIso]
    apply H
  · introv H _ _
    rw [pullback.mapDesc_comp, P.cancel_right_of_respectsIso]
    apply H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bcf15636c887111b8f5d021d3744ed9d486c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
