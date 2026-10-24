# Grothendieck.final_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7d320e-5d39-88fb-6055-31236e06c233",
  "kind": "lemma",
  "lexical_name": "Grothendieck.final_map",
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
  "slug": "grothendieck-final-map--f901c722d1b70c12257e0302",
  "source": {
    "blob": "c9a8f23f3161de99f3fe0208ecfa2eef43ee15f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f901c722d1b70c12257e030257529f96849eed9912c26755f547456aa3ea257d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7d320e-5d39-88fb-6055-31236e06c233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Grothendieck.final_map {F G : C ⥤ Cat.{v₂, u₂}} (α : F ⟶ G)
    [hα : ∀ X, Final (α.app X).toFunctor] : Final (map α) := by
  let sC : C ≌ AsSmall.{max u₁ u₂ v₁ v₂} C := AsSmall.equiv
  let F' : AsSmall C ⥤ Cat := sC.inverse ⋙ F ⋙ Cat.asSmallFunctor.{max v₁ u₁ v₂ u₂}
  let G' : AsSmall C ⥤ Cat := sC.inverse ⋙ G ⋙ Cat.asSmallFunctor.{max v₁ u₁ v₂ u₂}
  let α' : F' ⟶ G' := whiskerLeft _ (whiskerRight α _)
  have : ∀ X, Final (α'.app X).toFunctor := fun X =>
    inferInstanceAs (AsSmall.equiv.inverse ⋙ _ ⋙ AsSmall.equiv.functor).Final
  have hα' : (map α').Final := final_map_small _
  dsimp only [α', ← Equivalence.symm_functor] at hα'
  have i := mapWhiskerLeftIsoConjPreMap sC.symm (whiskerRight α Cat.asSmallFunctor)
    ≪≫ isoWhiskerLeft _ (isoWhiskerRight (mapWhiskerRightAsSmallFunctor α) _)
  have := final_of_natIso i
  rwa [← final_iff_equivalence_comp, ← final_iff_comp_equivalence,
    ← final_iff_equivalence_comp, ← final_iff_comp_equivalence] at this

end Grothendieck

section Prod

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable {C' : Type u₃} [Category.{v₃} C']
variable {D' : Type u₄} [Category.{v₄} D']
variable (F : C ⥤ D) (G : C' ⥤ D')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a8f23f3161de99f3fe0208ecfa2eef43ee15f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
