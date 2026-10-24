# of_preservesColimits_in_each_variable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05d898cd1ff819bb49d721aed19d344740bc4f47c3a10a489dfef6b169151c02",
  "kind": "instance",
  "lexical_name": "of_preservesColimits_in_each_variable",
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
  "slug": "of-preservescolimits-in-each-variable--932e5a86cc6635c56c87c7f4",
  "source": {
    "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:932e5a86cc6635c56c87c7f4543921ec3c1fae1a0d597756f2e0a7e05a0b7a6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05d898cd1ff819bb49d721aed19d344740bc4f47c3a10a489dfef6b169151c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance of_preservesColimits_in_each_variable
    [∀ x : C₂, PreservesColimit K₁ (G.flip.obj x)] [∀ x : C₁, PreservesColimit K₂ (G.obj x)] :
    PreservesColimit₂ K₁ K₂ G where
  nonempty_isColimit_mapCocone₂ {c₁} hc₁ {c₂} hc₂ :=
    let Q₀ : DiagramOfCocones (whiskeringLeft₂ C |>.obj K₁ |>.obj K₂ |>.obj G) :=
      { obj j₁ := G.obj (K₁.obj j₁) |>.mapCocone c₂
        map f := { hom := G.map (K₁.map f) |>.app c₂.pt } }
    let P : ∀ j₁, IsColimit (Q₀.obj j₁) := fun j ↦ isColimitOfPreserves _ hc₂
    let E₀ : Q₀.coconePoints ≅ K₁ ⋙ G.flip.obj c₂.pt := NatIso.ofComponents (fun _ ↦ Iso.refl _)
    let E₁ : (Cocone.precompose E₀.hom).obj (coconeOfCoconeUncurry P <| G.mapCocone₂ c₁ c₂) ≅
        (G.flip.obj c₂.pt).mapCocone c₁ :=
      Cocone.ext
        (Iso.refl _)
        (fun j₁ => by
          dsimp [E₀, Q₀]
          simp only [id_comp, comp_id]
          let s : Cocone (whiskeringLeft₂ C |>.obj K₁ |>.obj K₂ |>.obj G |>.obj j₁) := ?_
          change (P j₁).desc s = _
          symm
          apply (P j₁).hom_ext
          intro j₂
          have := (P j₁).fac s j₂
          simp only [Functor.mapCocone_pt, Functor.mapCocone_ι_app, Q₀, s] at this
          simp only [Functor.mapCocone_pt,
            Functor.mapCocone_ι_app, NatTrans.naturality, this, Q₀, s])
    ⟨IsColimit.ofCoconeUncurry P <| IsColimit.precomposeHomEquiv E₀ _ <|
      IsColimit.ofIsoColimit (isColimitOfPreserves _ hc₁) E₁.symm⟩

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ba882132a202a7541fc1e8d53df7366fb4de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
