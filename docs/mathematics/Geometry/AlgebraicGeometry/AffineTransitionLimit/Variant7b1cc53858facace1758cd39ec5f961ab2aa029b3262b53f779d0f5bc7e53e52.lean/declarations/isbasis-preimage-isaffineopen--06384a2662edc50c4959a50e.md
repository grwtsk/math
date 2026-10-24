# isBasis_preimage_isAffineOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:793304e4-8b34-c15e-3fe2-3a0ffb312730",
  "kind": "lemma",
  "lexical_name": "isBasis_preimage_isAffineOpen",
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
  "slug": "isbasis-preimage-isaffineopen--06384a2662edc50c4959a50e",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 318,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06384a2662edc50c4959a50e41daea96b8db66af98fa0296e7d4788449c201d8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:793304e4-8b34-c15e-3fe2-3a0ffb312730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBasis_preimage_isAffineOpen [IsCofiltered I] [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] :
    TopologicalSpace.Opens.IsBasis
      { (c.π.app i ⁻¹ᵁ V : c.pt.Opens) | (i : I) (V : (D.obj i).Opens) (_ : IsAffineOpen V) } := by
  refine TopologicalSpace.Opens.isBasis_iff_nbhd.mpr fun {U x} hxU ↦ ?_
  obtain ⟨i⟩ := IsCofiltered.nonempty (C := I)
  obtain ⟨_, ⟨V, hV : IsAffineOpen V, rfl⟩, hxV, -⟩ :=
    (D.obj i).isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ (c.π.app i x)) isOpen_univ
  have (j : _) : IsAffine ((opensDiagram D i V).op.obj j).unop := hV.preimage _
  have (j : _) : IsAffine ((opensDiagram D i V).obj j) := hV.preimage _
  obtain ⟨r, hrU, hxr⟩ := IsAffineOpen.exists_basicOpen_le
    (Scheme.isAffine_of_isLimit _ (isLimitOpensCone D c hc i V)) (V := U) ⟨x, hxU⟩ hxV
  obtain ⟨⟨j⟩, s, hs⟩ := (Types.jointly_surjective_of_isColimit (isColimitOfPreserves
    (Scheme.Γ ⋙ forget _) (isLimitOpensCone D c hc i V).op) ((c.π.app i ⁻¹ᵁ V).topIso.inv r))
  obtain ⟨s, rfl⟩ := (D.map j.hom ⁻¹ᵁ V).topIso.symm.commRingCatIsoToRingEquiv.surjective s
  have h : c.π.app j.left ⁻¹ᵁ D.map j.hom ⁻¹ᵁ V = c.π.app i ⁻¹ᵁ V := congr($(c.w j.hom) ⁻¹ᵁ V)
  have : r = (c.π.app j.left).appLE (D.map j.hom ⁻¹ᵁ V) (c.π.app i ⁻¹ᵁ V) h.ge s := by
    convert!
      show r = ((topIso _).inv ≫ ((opensCone D c i V).π.app j).appTop ≫ (topIso _).hom) s from
        (c.π.app i ⁻¹ᵁ V).topIso.commRingCatIsoToRingEquiv.symm_apply_eq.mp hs.symm using 3
    simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE]
  refine ⟨_, ⟨j.left, _, (hV.preimage _).basicOpen s, rfl⟩, ?_⟩
  simp only [Functor.const_obj_obj, Scheme.preimage_basicOpen] at this ⊢
  rw [← c.pt.basicOpen_res_eq _ (eqToHom h.symm).op, ← CommRingCat.comp_apply,
    Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map, ← this]
  exact ⟨hxr, hrU⟩

set_option backward.defeqAttrib.useBackward true in
include hc in
@[stacks 01Z4 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
