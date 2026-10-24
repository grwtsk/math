# actionOfMonoidalFunctorToEndofunctorMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89e268d5a4c1f5ccc5d546959061bb1aa734297dccbf875e9dfbba845a41313b",
  "kind": "def",
  "lexical_name": "actionOfMonoidalFunctorToEndofunctorMop",
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
  "slug": "actionofmonoidalfunctortoendofunctormop--7e130b25de178eba14431e65",
  "source": {
    "blob": "5c7daac6f2a9ac333e4779cc52a7fc3a43617013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e130b25de178eba14431e652b1febe1bab7fcceb23a464bf419fc783c6728b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89e268d5a4c1f5ccc5d546959061bb1aa734297dccbf875e9dfbba845a41313b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionOfMonoidalFunctorToEndofunctorMop (F : C ⥤ (D ⥤ D)ᴹᵒᵖ) [F.Monoidal] :
    MonoidalLeftAction C D where
  actionObj c d := (F.obj c).unmop.obj d
  actionHomLeft f d := (F.map f).unmop.app d
  actionHomRight c _ _ f := (F.obj c).unmop.map f
  actionAssocIso c c' d := Functor.Monoidal.μIso F c c' |>.unmop.app d |>.symm
  actionUnitIso d := Functor.Monoidal.εIso F |>.unmop.app d |>.symm
  actionAssocIso_hom_naturality {c₁ c₁' c₂ c₂' c₃ c₃'} f g h := by
    have e := congrArg (fun t ↦ t.unmop.app c₃) <|
      Functor.OplaxMonoidal.δ_natural F f g
    dsimp at e
    rw [endofunctorMonoidalCategory_tensorMap_app] at e
    simp [reassoc_of% e]
  whiskerRight_actionHomLeft {x y} c f d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.LaxMonoidal.μ_natural_left F f c
    dsimp at e
    simp [e, ← NatTrans.comp_app, ← unmop_comp]
  whiskerLeft_actionHomLeft c {x y} f d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.LaxMonoidal.μ_natural_right F c f
    dsimp at e
    simp [e, ← NatTrans.comp_app, ← unmop_comp]
  associator_actionHom c₁ c₂ c₃ d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.OplaxMonoidal.associativity F c₁ c₂ c₃
    dsimp at e
    simp only [Category.comp_id] at e
    simp [e]
  leftUnitor_actionHom c d := by
    have e := (F.map (λ_ c).hom).unmop.app d ≫=
      (congrArg (fun t ↦ t.unmop.app d) <|
        Functor.OplaxMonoidal.left_unitality F c)
    dsimp at e
    simp only [Category.comp_id, ← NatTrans.comp_app_assoc, ← unmop_comp,
      ← F.map_comp_assoc, Iso.hom_inv_id, Functor.map_id, Category.id_comp] at e
    simp [e]
  rightUnitor_actionHom c d := by
    have e := (F.map (ρ_ c).hom).unmop.app d ≫=
      (congrArg (fun t ↦ t.unmop.app d) <|
        Functor.OplaxMonoidal.right_unitality F c)
    dsimp at e
    simp only [Category.comp_id, ← NatTrans.comp_app_assoc, ← unmop_comp,
      ← F.map_comp_assoc, Iso.hom_inv_id, Functor.map_id, Category.id_comp] at e
    simp [e]

/-- If the (left) action of `C` on `D` comes from a monoidal functor
`C ⥤ (D ⥤ D)ᴹᵒᵖ`, then `curriedActionMop C D` is naturally isomorphic to that
functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7daac6f2a9ac333e4779cc52a7fc3a43617013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
