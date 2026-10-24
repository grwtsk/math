# bicategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a23c030420d99db704196e4ede5896fc069757809852b47d031efcc34e0b6a81",
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
  "slug": "bicategory--e5de32c1ce50ef887c8eca14",
  "source": {
    "blob": "1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5de32c1ce50ef887c8eca1403ff4825e78e0ee455fdb3fd069392fbc486872f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a23c030420d99db704196e4ede5896fc069757809852b47d031efcc34e0b6a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance bicategory : Bicategory (FreeBicategory B) where
  homCategory := @fun (a b : B) => FreeBicategory.homCategory a b
  whiskerLeft := @fun _ _ _ f g h η => Quot.map (Hom₂.whisker_left f) (Rel.whisker_left f g h) η
  whiskerLeft_id := @fun _ _ _ f g => Quot.sound (Rel.whisker_left_id f g)
  associator := @fun _ _ _ _ f g h =>
    { hom := Quot.mk Rel (Hom₂.associator f g h)
      inv := Quot.mk Rel (Hom₂.associator_inv f g h)
      hom_inv_id := Quot.sound (Rel.associator_hom_inv f g h)
      inv_hom_id := Quot.sound (Rel.associator_inv_hom f g h) }
  leftUnitor := @fun _ _ f =>
    { hom := Quot.mk Rel (Hom₂.left_unitor f)
      inv := Quot.mk Rel (Hom₂.left_unitor_inv f)
      hom_inv_id := Quot.sound (Rel.left_unitor_hom_inv f)
      inv_hom_id := Quot.sound (Rel.left_unitor_inv_hom f) }
  rightUnitor := @fun _ _ f =>
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
  whiskerRight := @fun _ _ _ f g η h => Quot.map (Hom₂.whisker_right h) (Rel.whisker_right f g h) η
  id_whiskerRight := @fun _ _ _ f g => Quot.sound (Rel.id_whisker_right f g)
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
  pentagon := @fun _ _ _ _ _ f g h i => Quot.sound (Rel.pentagon f g h i)
  triangle := @fun _ _ _ f g => Quot.sound (Rel.triangle f g)

variable {a b c d : FreeBicategory B}

/-- `Hom₂.mk η` is an abbreviation for `Quot.mk Rel η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
