# toNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc4a309922e989df19aa536ca16e193bab45270c222f05d9837e774d7f726c5",
  "kind": "def",
  "lexical_name": "toNormalization",
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
  "slug": "tonormalization--b5ad1d60a6f082c42c100f8b",
  "source": {
    "blob": "94f400bbdee7c7f9ab0e514f588e78c5fb994b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 133,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5ad1d60a6f082c42c100f8bea2d6b421441f4bdbadcb382f71cf58775303283",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc4a309922e989df19aa536ca16e193bab45270c222f05d9837e774d7f726c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNormalization : X ⟶ f.normalization :=
  Scheme.OpenCover.glueMorphismsOfLocallyDirected
    ((directedCover Y).pullback₁ f)
    (fun U ↦ letI := (f.app U.1).hom.toAlgebra
      (pullbackRestrictIsoRestrict f _).hom ≫
      (f ⁻¹ᵁ U.1).toSpecΓ ≫ Spec.map (CommRingCat.ofHom <| integralClosure Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1)
      |>.val.toRingHom) ≫ f.normalizationOpenCover.f U) fun {U V : Y.AffineZariskiSite} i ↦ by
  have : (pullbackRestrictIsoRestrict f U.1).inv ≫
      Cover.trans ((directedCover Y).pullback₁ f) i ≫
      (pullbackRestrictIsoRestrict f V.1).hom = X.homOfLE
        (f.preimage_mono (toOpens_mono i.1.1)) := by
    rw [← cancel_mono (Scheme.Opens.ι _)]
    simp +instances [Cover.trans, Cover.locallyDirectedPullbackCover]
  rw [← Iso.inv_comp_eq, reassoc_of% this, ← Scheme.Opens.toSpecΓ_SpecMap_presheaf_map_assoc,
    ← Spec.map_comp_assoc]
  dsimp [normalizationOpenCover]
  rw [← colimit.w f.normalizationGlueData.functor i]
  dsimp [normalizationGlueData, relativeGluingData]
  rw [← Spec.map_comp_assoc]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f400bbdee7c7f9ab0e514f588e78c5fb994b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
