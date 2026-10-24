# normalizationDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39c690c95bd24ecafa3c0dd2b1826ccb198f992d8646c2f190cd338a4107790a",
  "kind": "def",
  "lexical_name": "normalizationDesc",
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
  "slug": "normalizationdesc--53e1d9e0a54a43995b0d945f",
  "source": {
    "blob": "94f400bbdee7c7f9ab0e514f588e78c5fb994b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 373,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53e1d9e0a54a43995b0d945f1c1c96866f3da1450c0b23dd5816d5c87514aac8",
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

Occurrence: `declaration:39c690c95bd24ecafa3c0dd2b1826ccb198f992d8646c2f190cd338a4107790a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizationDesc (H : f = f₁ ≫ f₂) : f.normalization ⟶ T := by
  refine colimit.desc _
    { pt := _
      ι.app U := Spec.map (CommRingCat.ofHom ((f₁.appLE _ _ (by simp [H])).hom.codRestrict _
        fun x ↦ ?_)) ≫ (U.2.preimage f₂).fromSpec,
      ι.naturality := ?_ }
  · algebraize [(f.app U.1).hom, (f₂.app U.1).hom,
      (f₁.appLE (f₂ ⁻¹ᵁ U.1) (f ⁻¹ᵁ U.1) (by simp [H])).hom]
    have : IsScalarTower Γ(Y, U.1) Γ(T, f₂ ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ U.1) := .of_algebraMap_eq' <| by
      simp only [RingHom.algebraMap_toAlgebra, ← CommRingCat.hom_comp,
        Hom.app_eq_appLE, Hom.appLE_comp_appLE, ← H]
    exact .algebraMap (R := Γ(Y, U.1)) (B := Γ(X, f ⁻¹ᵁ U.1)) (f₂.isIntegral_app U.1 U.2 x)
  · intros U V i
    dsimp [normalizationGlueData, relativeGluingData]
    rw [Category.comp_id, ← Spec.map_comp_assoc, ← (V.2.preimage f₂).map_fromSpec (U.2.preimage f₂)
      (homOfLE (f₂.preimage_mono (Scheme.AffineZariskiSite.toOpens_mono i.le))).op,
      ← Spec.map_comp_assoc]
    congr 2
    ext i
    apply Subtype.ext
    dsimp [normalizationDiagram]
    simp only [← CommRingCat.comp_apply, appLE_map, map_appLE]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f400bbdee7c7f9ab0e514f588e78c5fb994b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
