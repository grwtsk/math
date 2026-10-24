# isoOfIsAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6065874014879af3e4e2a64151ecc5df9d87e4ff4bfdae2638c039efd62c0c16",
  "kind": "def",
  "lexical_name": "isoOfIsAffine",
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
  "slug": "isoofisaffine--5834d1e8b3e4b953109e3d54",
  "source": {
    "blob": "f6ef5202481ccce3fcc32a26d9f464b4c6dde646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 185,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5834d1e8b3e4b953109e3d54172c7bf1ce376b38b4d70b57536ed8e4a4e8c62d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6065874014879af3e4e2a64151ecc5df9d87e4ff4bfdae2638c039efd62c0c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfIsAffine [IsAffine S] :
    𝔸(n; S) ≅ Spec (.of (MvPolynomial n Γ(S, ⊤))) where
      hom := 𝔸(n; S).toSpecΓ ≫ Spec.map (CommRingCat.ofHom
        (eval₂Hom ((𝔸(n; S) ↘ S).appTop).hom (coord S)))
      inv := homOfVector (Spec.map (CommRingCat.ofHom C) ≫ S.isoSpec.inv)
        ((Scheme.ΓSpecIso (.of (MvPolynomial n Γ(S, ⊤)))).inv ∘ MvPolynomial.X)
      hom_inv_id := by
        ext1
        · simp only [Category.assoc, homOfVector_over, Category.id_comp]
          rw [← Spec.map_comp_assoc, ← CommRingCat.ofHom_comp, eval₂Hom_comp_C,
            CommRingCat.ofHom_hom, ← Scheme.toSpecΓ_naturality_assoc]
          simp [Scheme.isoSpec]
        · simp only [Category.assoc, Scheme.comp_app, Scheme.comp_coeBase,
            TopologicalSpace.Opens.map_comp_obj, TopologicalSpace.Opens.map_top,
            Scheme.toSpecΓ_appTop, Scheme.ΓSpecIso_naturality, CommRingCat.comp_apply,
            homOfVector_appTop_coord, Function.comp_apply, CommRingCat.coe_of, Scheme.id_app,
            CommRingCat.id_apply]
          -- TODO: why does `simp` not apply this?
          rw [CommRingCat.hom_inv_apply]
          exact eval₂_X _ _ _
      inv_hom_id := by
        apply ext_of_isAffine
        simp only [Scheme.comp_coeBase, TopologicalSpace.Opens.map_comp_obj,
          TopologicalSpace.Opens.map_top, Scheme.comp_app, Scheme.toSpecΓ_appTop,
          Scheme.ΓSpecIso_naturality, Category.assoc, Scheme.id_app, ← Iso.eq_inv_comp,
          Category.comp_id]
        ext : 1
        apply ringHom_ext'
        · show _ = (CommRingCat.ofHom C ≫ _).hom
          rw [CommRingCat.hom_comp, RingHom.comp_assoc, CommRingCat.hom_ofHom, eval₂Hom_comp_C,
            ← CommRingCat.hom_comp, ← CommRingCat.hom_ext_iff,
            ← cancel_mono (Scheme.ΓSpecIso _).hom]
          rw [← Scheme.comp_appTop, homOfVector_over, Scheme.comp_appTop]
          simp only [Category.assoc, Scheme.ΓSpecIso_naturality, CommRingCat.of_carrier,
            ← Scheme.toSpecΓ_appTop]
          rw [← Scheme.comp_appTop_assoc, Scheme.isoSpec, asIso_inv, IsIso.hom_inv_id]
          simp
        · intro i
          rw [CommRingCat.comp_apply, ConcreteCategory.hom_ofHom, coe_eval₂Hom]
          simp only [eval₂_X]
          exact homOfVector_appTop_coord _ _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ef5202481ccce3fcc32a26d9f464b4c6dde646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
