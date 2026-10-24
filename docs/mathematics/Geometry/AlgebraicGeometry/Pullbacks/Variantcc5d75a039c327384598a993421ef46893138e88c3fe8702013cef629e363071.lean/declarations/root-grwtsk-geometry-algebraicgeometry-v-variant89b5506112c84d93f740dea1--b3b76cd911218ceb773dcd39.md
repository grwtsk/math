# _root_.GRWTSK.Geometry.AlgebraicGeometry.V.Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.AlgebraicGeometry.Scheme.isPullback_of_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b85e38-008e-e818-0932-af7a643cd88f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.AlgebraicGeometry.V.Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.AlgebraicGeometry.Scheme.isPullback_of_openCover",
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
  "slug": "root-grwtsk-geometry-algebraicgeometry-v-variant89b5506112c84d93f740dea1--b3b76cd911218ceb773dcd39",
  "source": {
    "blob": "9d2866b25edea2b5438d6659634844a94c5b2d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 620,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b76cd911218ceb773dcd3913b923a6a676e8c963d07e92edb6ac07bacfbd61",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b85e38-008e-e818-0932-af7a643cd88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.V.Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.AlgebraicGeometry.Scheme.isPullback_of_openCover
    {W : Scheme.{u}} (fWX : W ⟶ X) (fWY : W ⟶ Y) (fXZ : X ⟶ Z) (fYZ : Y ⟶ Z) (𝒰 : X.OpenCover)
    (H : ∀ i, IsPullback (𝒰.pullbackHom fWX i) ((𝒰.pullback₁ fWX).f i ≫ fWY) (𝒰.f i ≫ fXZ) fYZ) :
    IsPullback fWX fWY fXZ fYZ := by
  have h : fWX ≫ fXZ = fWY ≫ fYZ :=
    Scheme.Cover.hom_ext (𝒰.pullback₁ fWX) _ _ fun i ↦ by simpa using (H i).w
  suffices IsIso (lift fWX fWY h) from .of_iso_pullback ⟨h⟩ (asIso (lift _ _ h)) (by simp) (by simp)
  have H₁ (i : _) : IsIso ((openCoverOfLeft 𝒰 fXZ fYZ).pullbackHom (lift fWX fWY h) i) := by
    let f := map (𝒰.f i ≫ fXZ) fYZ fXZ fYZ (𝒰.f i) (𝟙 Y) (𝟙 Z) (by simp) (by simp)
    have : IsPullback (fst (𝒰.f i ≫ fXZ) fYZ) f (𝒰.f i) (fst _ _) := by
      simpa [← IsPullback.paste_vert_iff (.of_hasPullback _ _), f] using .of_hasPullback _ _
    have H' : IsPullback (fst fWX (𝒰.f i)) (lift (snd _ _) (fst _ _ ≫ fWY) (by simp [← h]))
        (lift fWX fWY h) f := by
      rw [← IsPullback.paste_vert_iff this.flip (by ext <;> simp [f])]
      simpa using .of_hasPullback _ _
    convert! (inferInstance : IsIso (H'.isoPullback.inv ≫ (H i).isoPullback.hom))
    aesop (add simp [Iso.eq_inv_comp, Scheme.Cover.pullbackHom])
  exact MorphismProperty.of_zeroHypercover_target (P := .isomorphisms Scheme)
    (Scheme.Pullback.openCoverOfLeft 𝒰 fXZ fYZ) H₁

variable (f : X ⟶ Y) (𝒰 : OpenCover.{u} Y) (𝒱 : ∀ i, OpenCover.{w} ((𝒰.pullback₁ f).X i))

/--
Given `𝒰 i` covering `Y` and `𝒱 i j` covering `𝒰 i`, this is the open cover
`𝒱 i j₁ ×[𝒰 i] 𝒱 i j₂` ranging over all `i`, `j₁`, `j₂`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantcc5d75a039c327384598a993421ef46893138e88c3fe8702013cef629e363071.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2866b25edea2b5438d6659634844a94c5b2d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
