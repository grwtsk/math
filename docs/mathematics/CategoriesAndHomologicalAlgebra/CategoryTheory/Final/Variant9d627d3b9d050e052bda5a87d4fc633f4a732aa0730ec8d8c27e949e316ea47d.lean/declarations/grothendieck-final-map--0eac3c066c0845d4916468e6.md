# Grothendieck.final_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82c325140d9282aafbf2b648e09f1b7bb01bbfd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1084,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4f2dbde-efa6-f63f-ac39-cbeb1ed90594",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7707ecbb-b6a0-fda0-1bf9-701646cf3f41",
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
  "slug": "grothendieck-final-map--0eac3c066c0845d4916468e6",
  "source": {
    "blob": "82c325140d9282aafbf2b648e09f1b7bb01bbfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1109,
    "line": 1084,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eac3c066c0845d4916468e66659f5a587120ced95b8504505802ad68cb19b3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7707ecbb-b6a0-fda0-1bf9-701646cf3f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1084–1109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Grothendieck.final_map {F G : C ⥤ Cat.{v₂, u₂}} (α : F ⟶ G) [hα : ∀ X, Final (α.app X)] :
    Final (map α) := by
  let sC : C ≌ AsSmall.{max u₁ u₂ v₁ v₂} C := AsSmall.equiv
  let F' : AsSmall C ⥤ Cat := sC.inverse ⋙ F ⋙ Cat.asSmallFunctor.{max v₁ u₁ v₂ u₂}
  let G' : AsSmall C ⥤ Cat := sC.inverse ⋙ G ⋙ Cat.asSmallFunctor.{max v₁ u₁ v₂ u₂}
  let α' : F' ⟶ G' := whiskerLeft _ (whiskerRight α _)
  have : ∀ X, Final (α'.app X) := fun X =>
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean#L1084).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c325140d9282aafbf2b648e09f1b7bb01bbfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
