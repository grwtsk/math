# Scheme.restrictMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa87c0d2b297a77062f5d20f95963110bb112c8f1ab2b31179c3ff0ca2a0799a",
  "kind": "abbrev",
  "lexical_name": "Scheme.restrictMapIso",
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
  "slug": "scheme-restrictmapiso--7d08ab05b6739ca7eb6ebaf9",
  "source": {
    "blob": "66cb4afeae676271592ffb515e0707f44280a402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 814,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d08ab05b6739ca7eb6ebaf9c07fd8371799c995c32f533f087c71c223b3ec8b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa87c0d2b297a77062f5d20f95963110bb112c8f1ab2b31179c3ff0ca2a0799a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev Scheme.restrictMapIso {X Y : Scheme} (f : X ⟶ Y) [IsIso f]
    (U : Opens Y) :
    X.restrict ((Opens.map f.1.base).obj U).openEmbedding ≅ Y.restrict U.openEmbedding := by
  apply IsOpenImmersion.isoOfRangeEq (f := X.ofRestrict _ ≫ f)
    (H := PresheafedSpace.IsOpenImmersion.comp (hf := inferInstance) (hg := inferInstance))
    (Y.ofRestrict _) _
  dsimp [Opens.inclusion]
  rw [coe_comp, Set.range_comp, ContinuousMap.coe_mk, ContinuousMap.coe_mk]
  dsimp
  rw [Subtype.range_val, Subtype.range_coe]
  refine' @Set.image_preimage_eq _ _ f.1.base U.1 _
  rw [← TopCat.epi_iff_surjective]
  infer_instance
#align algebraic_geometry.Scheme.restrict_map_iso AlgebraicGeometry.Scheme.restrictMapIso

/-- Given an open cover on `X`, we may pull them back along a morphism `W ⟶ X` to obtain
an open cover of `W`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cb4afeae676271592ffb515e0707f44280a402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
