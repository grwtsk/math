# isColimitCoconeπOpCompShrinkYonedaObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:094b83046ab0290e1531e0e121cd6d14474d511e97560a1f4a13d181f961b92e",
  "kind": "def",
  "lexical_name": "isColimitCoconeπOpCompShrinkYonedaObj",
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
  "slug": "iscolimitcocone-opcompshrinkyonedaobj--b605438e751b0fce8ab6db46",
  "source": {
    "blob": "8ddb46af21d198d628c869af60087d04d52b185e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 755,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b605438e751b0fce8ab6db469bb88dfd51feec75ee442b4e9f0534c00da5161d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:094b83046ab0290e1531e0e121cd6d14474d511e97560a1f4a13d181f961b92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCoconeπOpCompShrinkYonedaObj (X : C) :
    IsColimit (coconeπOpCompShrinkYonedaObj F X) := by
  refine Nonempty.some ((Types.isColimit_iff_coconeTypesIsColimit _).2
    ⟨?_, fun x ↦ ?_⟩)
  · let G := (Functor.Elements.π F).op ⋙ shrinkYoneda.{w}.obj X
    let c := G.coconeTypesEquiv.symm (coconeπOpCompShrinkYonedaObj F X)
    have (u : G.ColimitType) (x : F.obj X) (h : G.descColimitType c u = x) :
        G.ιColimitType (op (elementsMk _ _ x))
          (shrinkYonedaObjObjEquiv.symm (𝟙 X)) = u := by
      obtain ⟨⟨u⟩, v, rfl⟩ := Functor.ιColimitType_jointly_surjective _ u
      obtain ⟨v, rfl⟩ := shrinkYonedaObjObjEquiv.symm.surjective v
      dsimp [c] at v h
      simp only [Equiv.apply_symm_apply] at h
      rw [← G.ιColimitType_map (show u ⟶ F.elementsMk _ x from ⟨v, h⟩).op]
      simp [G, shrinkYoneda_obj_map_shrinkYonedaObjObjEquiv_symm.{w}]
    intro u₁ u₂ hu
    generalize hx₁ : G.descColimitType c u₁ = x
    have hx₂ : G.descColimitType c u₂ = x := by rw [← hx₁]; exact hu.symm
    rw [← this _ _ hx₁, ← this _ _ hx₂]
  · exact ⟨Functor.ιColimitType _ (op (elementsMk _ _ x))
      (shrinkYonedaObjObjEquiv.symm (𝟙 X)), by simp⟩

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddb46af21d198d628c869af60087d04d52b185e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
