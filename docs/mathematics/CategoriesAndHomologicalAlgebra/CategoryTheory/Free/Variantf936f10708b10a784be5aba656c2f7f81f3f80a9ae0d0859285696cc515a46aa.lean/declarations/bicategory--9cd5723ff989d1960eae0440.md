# bicategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf396812a0ad4a87e2af2bafca0500c5b7e46f8dc5afc1a93f14d1cd9c520260",
  "kind": "instance",
  "lexical_name": "bicategory",
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
  "slug": "bicategory--9cd5723ff989d1960eae0440",
  "source": {
    "blob": "467b3b70715d48178fe161c1b283ae8dd57b0cdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cd5723ff989d1960eae0440c16e3b7e7da6d3903753c186f85fe7bee109b756",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf396812a0ad4a87e2af2bafca0500c5b7e46f8dc5afc1a93f14d1cd9c520260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance bicategory : Bicategory (FreeBicategory B) where
  homCategory := @fun (a b : B) => FreeBicategory.homCategory a b
  whiskerLeft := @fun a b c f g h η => Quot.map (Hom₂.whisker_left f) (Rel.whisker_left f g h) η
  whiskerLeft_id := @fun a b c f g => Quot.sound (Rel.whisker_left_id f g)
  associator := @fun a b c d f g h =>
    { hom := Quot.mk Rel (Hom₂.associator f g h)
      inv := Quot.mk Rel (Hom₂.associator_inv f g h)
      hom_inv_id := Quot.sound (Rel.associator_hom_inv f g h)
      inv_hom_id := Quot.sound (Rel.associator_inv_hom f g h) }
  leftUnitor := @fun a b f =>
    { hom := Quot.mk Rel (Hom₂.left_unitor f)
      inv := Quot.mk Rel (Hom₂.left_unitor_inv f)
      hom_inv_id := Quot.sound (Rel.left_unitor_hom_inv f)
      inv_hom_id := Quot.sound (Rel.left_unitor_inv_hom f) }
  rightUnitor := @fun a b f =>
    { hom := Quot.mk Rel (Hom₂.right_unitor f)
      inv := Quot.mk Rel (Hom₂.right_unitor_inv f)
      hom_inv_id := Quot.sound (Rel.right_unitor_hom_inv f)
      inv_hom_id := Quot.sound (Rel.right_unitor_inv_hom f) }
  whiskerLeft_comp := by
    rintro a b c f g h i ⟨η⟩ ⟨θ⟩
    exact Quot.sound (Rel.whisker_left_comp f η θ)
  id_whiskerLeft := by
    rintro a b f g ⟨η⟩
    exact Quot.sound (Rel.id_whisker_left η)
  comp_whiskerLeft := by
    rintro a b c d f g h h' ⟨η⟩
    exact Quot.sound (Rel.comp_whisker_left f g η)
  whiskerRight := @fun a b c f g η h => Quot.map (Hom₂.whisker_right h) (Rel.whisker_right f g h) η
  id_whiskerRight := @fun a b c f g => Quot.sound (Rel.id_whisker_right f g)
  comp_whiskerRight := by
    rintro a b c f g h ⟨η⟩ ⟨θ⟩ i
    exact Quot.sound (Rel.comp_whisker_right i η θ)
  whiskerRight_id := by
    rintro a b f g ⟨η⟩
    exact Quot.sound (Rel.whisker_right_id η)
  whiskerRight_comp := by
    rintro a b c d f f' ⟨η⟩ g h
    exact Quot.sound (Rel.whisker_right_comp g h η)
  whisker_assoc := by
    rintro a b c d f g g' ⟨η⟩ h
    exact Quot.sound (Rel.whisker_assoc f η h)
  whisker_exchange := by
    rintro a b c f g h i ⟨η⟩ ⟨θ⟩
    exact Quot.sound (Rel.whisker_exchange η θ)
  pentagon := @fun a b c d e f g h i => Quot.sound (Rel.pentagon f g h i)
  triangle := @fun a b c f g => Quot.sound (Rel.triangle f g)
#align category_theory.free_bicategory.bicategory CategoryTheory.FreeBicategory.bicategory

variable {a b c d : FreeBicategory B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467b3b70715d48178fe161c1b283ae8dd57b0cdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
