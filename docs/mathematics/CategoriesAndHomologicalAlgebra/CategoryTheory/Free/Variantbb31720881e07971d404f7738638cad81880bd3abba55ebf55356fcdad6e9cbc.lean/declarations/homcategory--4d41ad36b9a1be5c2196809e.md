# homCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20172a940ec809858ed1487749295e0b7318520b8911b84ad27e9dbe604b1203",
  "kind": "instance",
  "lexical_name": "homCategory",
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
  "slug": "homcategory--4d41ad36b9a1be5c2196809e",
  "source": {
    "blob": "8631b31be550a36b142a557d0fa7464cbeb862c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantbb31720881e07971d404f7738638cad81880bd3abba55ebf55356fcdad6e9cbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d41ad36b9a1be5c2196809ec9a81cebe44a085a7c51dbdabaaa8b7cc4646af5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantbb31720881e07971d404f7738638cad81880bd3abba55ebf55356fcdad6e9cbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20172a940ec809858ed1487749295e0b7318520b8911b84ad27e9dbe604b1203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance homCategory (a b : FreeBicategory B) : Category (a ⟶ b) where
  Hom f g := Quot (@Rel _ _ a b f g)
  id f := Quot.mk Rel (Hom₂.id f)
  comp := @fun _ _ _ => Quot.map₂ Hom₂.vcomp Rel.vcomp_right Rel.vcomp_left
  id_comp := by
    rintro f g ⟨η⟩
    exact Quot.sound (Rel.id_comp η)
  comp_id := by
    rintro f g ⟨η⟩
    exact Quot.sound (Rel.comp_id η)
  assoc := by
    rintro f g h i ⟨η⟩ ⟨θ⟩ ⟨ι⟩
    exact Quot.sound (Rel.assoc η θ ι)

/-- Bicategory structure on the free bicategory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantbb31720881e07971d404f7738638cad81880bd3abba55ebf55356fcdad6e9cbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantbb31720881e07971d404f7738638cad81880bd3abba55ebf55356fcdad6e9cbc.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8631b31be550a36b142a557d0fa7464cbeb862c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
