# pseudofunctor_right_unitality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e460041-bfac-3247-e80d-282519a272c8",
  "kind": "lemma",
  "lexical_name": "pseudofunctor_right_unitality",
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
  "slug": "pseudofunctor-right-unitality--90bed2ff069fd5d9a74cf96b",
  "source": {
    "blob": "21c5027a7a2f5fc598166f622d14354d98699f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 304,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bed2ff069fd5d9a74cf96b49784f16295f52675cbaa4ed048b27d9cde923a2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e460041-bfac-3247-e80d-282519a272c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pseudofunctor_right_unitality :
    (pullbackComp (𝟙 X) f).inv ≫
      Functor.whiskerLeft (pullback f) (pullbackId X).hom ≫ (Functor.rightUnitor _).hom =
        eqToHom (by simp) := by
  let e₁ := pullbackComp (𝟙 _) f
  let e₂ := Functor.isoWhiskerLeft (pullback f) (pullbackId _)
  let e₃ := (pullback f).rightUnitor
  change e₁.inv ≫ e₂.hom ≫ e₃.hom = _
  have : e₁.hom = e₂.hom ≫ e₃.hom :=
    congr_arg Iso.hom (SheafOfModules.pullback_comp_id.{u} f.toRingCatSheafHom)
  simp [← this]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] pseudofunctor_associativity pseudofunctor_left_unitality
  pseudofunctor_right_unitality Bicategory.toNatTrans_conjugateEquiv
  conjugateEquiv_pullbackId_hom Adjunction.ofCat_comp conjugateEquiv_pullbackComp_inv in
/-- The pseudofunctor from `Schemeᵒᵖ` to the bicategory of adjunctions which sends
a scheme `X` to the category `X.Modules` of sheaves of modules over `X`.
(This contains both the covariant and the contravariant functorialities of
these categories.) -/
@[simps! obj_obj map_l map_r map_adj
  mapId_hom_τl mapId_hom_τr mapId_inv_τl mapId_inv_τr
  mapComp_hom_τl mapComp_hom_τr mapComp_inv_τl mapComp_inv_τr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant27e8fdb3acea1379594c8214d57bae2492cd91a06783d10b00ce0c1a4294694e.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21c5027a7a2f5fc598166f622d14354d98699f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
