# Cardinal.SharplyLT.exists_retract_of_isCardinalPresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f92ba908-fb48-0d19-e412-7def570bacb2",
  "kind": "lemma",
  "lexical_name": "Cardinal.SharplyLT.exists_retract_of_isCardinalPresentable",
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
  "slug": "cardinal-sharplylt-exists-retract-of-iscardinalpresentable--2f48703e83ad9fc64b982b4b",
  "source": {
    "blob": "581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f48703e83ad9fc64b982b4b5a6b7f8a4c00dfc6475bc1df11f7046285a07606",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f92ba908-fb48-0d19-e412-7def570bacb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cardinal.SharplyLT.exists_retract_of_isCardinalPresentable
    {κ₁ κ₂ : Cardinal.{w}} [Fact κ₁.IsRegular] [Fact κ₂.IsRegular]
    (hκ : κ₁.SharplyLT κ₂) {C : Type*} [Category* C]
    [IsCardinalAccessibleCategory C κ₁] (X : C) [IsCardinalPresentable X κ₂] :
    ∃ (Y : C) (_ : Retract X Y) (J : Type w) (_ : PartialOrder J),
      IsCardinalFiltered J κ₁ ∧ HasCardinalLT J κ₂ ∧
        Nonempty ((isCardinalPresentable C κ₁).ColimitOfShape J Y) := by
  have hκ₁ := isCardinalFilteredGenerator_isCardinalPresentable C κ₁
  obtain ⟨J, _, _, ⟨p⟩⟩ :
      ∃ (J : Type w) (_ : PartialOrder J) (_ : IsCardinalFiltered J κ₁),
    Nonempty ((isCardinalPresentable C κ₁).ColimitOfShape J X) := by
      obtain ⟨J₀, _, _, ⟨p₀⟩⟩ := hκ₁.exists_colimitsOfShape X
      obtain ⟨J, _, _, F, _⟩ := IsCardinalFiltered.exists_cardinal_directed J₀ κ₁
      exact ⟨_, _, inferInstance, ⟨p₀.reindex F⟩⟩
  have : IsCardinalFiltered (Subtype (IsCardinalFilteredAndHasCardinalLT κ₁ κ₂ J)) κ₂ :=
    isCardinalFiltered_subtype hκ.exists_isCardinalFiltered_set
  obtain ⟨K, i, hi⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ₂
    (isColimit κ₁ κ₂ p) (𝟙 X)
  exact ⟨colimit κ₁ κ₂ p K,
    { i := i, r := colimit.π κ₁ κ₂ p K }, K.val,
    inferInstance, K.prop.1, K.prop.2, ⟨.colimit (K.val.mono_coe.functor ⋙ p.diag)
      (fun _ ↦ p.prop_diag_obj _)⟩⟩

namespace CategoryTheory

namespace IsCardinalAccessibleCategory

variable {C : Type*} [Category* C] {D : Type*} [Category* D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
