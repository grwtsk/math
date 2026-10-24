# homCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bc2cba265d3773195e4caec07114531e579531680837914c3c6b374737f5523",
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
  "slug": "homcategory--0bf7124af1529c3e35d7aa64",
  "source": {
    "blob": "1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf7124af1529c3e35d7aa6418518aa36c274504779b78e20cd18b9a01c80b42",
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

Occurrence: `declaration:1bc2cba265d3773195e4caec07114531e579531680837914c3c6b374737f5523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant4c18f64dc1dc215b1fdf2e813330f96b7a17c06107714c9756516fc50c20db06.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1604bbbf49e2b6b63152d30c4fc7c4907fce3fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
