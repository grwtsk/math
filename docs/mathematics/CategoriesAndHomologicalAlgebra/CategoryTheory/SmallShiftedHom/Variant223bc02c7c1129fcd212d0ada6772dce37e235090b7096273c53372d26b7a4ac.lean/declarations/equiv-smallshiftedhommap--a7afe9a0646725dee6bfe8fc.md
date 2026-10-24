# equiv_smallShiftedHomMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc632041-ede4-3a56-3843-d4d7f97a317a",
  "kind": "lemma",
  "lexical_name": "equiv_smallShiftedHomMap",
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
  "slug": "equiv-smallshiftedhommap--a7afe9a0646725dee6bfe8fc",
  "source": {
    "blob": "a0740226a4fa4be97d74d1b9512c251878af8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 429,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7afe9a0646725dee6bfe8fc2e5425f43ca7e74dab30d9157d1616cd33c84999",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc632041-ede4-3a56-3843-d4d7f97a317a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_smallShiftedHomMap (G : D₁ ⥤ D₂) [G.CommShift M]
    (e : Φ.functor ⋙ L₂ ≅ L₁ ⋙ G) [NatTrans.CommShift e.hom M]
    {m : M} (f : SmallShiftedHom.{w} W₁ X₁ Y₁ m) :
    SmallShiftedHom.equiv W₂ L₂ (Φ.smallShiftedHomMap eX eY f) =
      (ShiftedHom.mk₀ 0 rfl (L₂.map eX.inv ≫ e.hom.app _)).comp
        (((SmallShiftedHom.equiv W₁ L₁ f).map G).comp
          ((ShiftedHom.mk₀ 0 rfl (e.inv.app _ ≫ L₂.map eY.hom)))
          (zero_add m)) (add_zero m) := by
  have := hasSmallLocalizedHom_of_hasSmallLocalizedShiftedHom₀.{w''} W₂ M X₂ X₂
  apply ((L₂.commShiftIso m).app Y₂).homToEquiv.symm.injective
  simp only [Functor.comp_obj, SmallShiftedHom.equiv_apply, Iso.app_hom,
    Iso.homToEquiv_symm_apply, Iso.app_inv, assoc, Iso.hom_inv_id_app, comp_id]
  refine (Φ.equiv_smallHomMap' L₁ L₂ _ _ G e f).trans ?_
  simp only [Functor.comp_obj, NatTrans.app_shift,
    Functor.commShiftIso_comp_hom_app, Functor.commShiftIso_comp_inv_app, assoc,
    Iso.trans_hom, Iso.app_hom, Functor.mapIso_hom, Functor.map_comp, ShiftedHom.map,
    ShiftedHom.comp_mk₀, ShiftedHom.mk₀_comp,
    Functor.commShiftIso_inv_naturality]
  nth_rw 2 [← Functor.map_comp_assoc]
  simp

variable [W₁.IsCompatibleWithShift M] [W₂.IsCompatibleWithShift M]

set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0740226a4fa4be97d74d1b9512c251878af8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
