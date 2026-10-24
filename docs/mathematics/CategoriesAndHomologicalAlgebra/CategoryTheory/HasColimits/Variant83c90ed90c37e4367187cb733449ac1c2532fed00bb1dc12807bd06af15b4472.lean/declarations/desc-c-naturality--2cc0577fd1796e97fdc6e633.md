# desc_c_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42fed88610f647a675a52b5f6b593a40d57270d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15209e32-d7f4-43ac-b650-0c928ec910d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea4a31f0-18e0-fb34-b24c-9f4061fcb982",
  "kind": "theorem",
  "lexical_name": "desc_c_naturality",
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
  "slug": "desc-c-naturality--2cc0577fd1796e97fdc6e633",
  "source": {
    "blob": "42fed88610f647a675a52b5f6b593a40d57270d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc0577fd1796e97fdc6e633cb481aabd800c89d27840c13ed1d393df8a2ec67",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea4a31f0-18e0-fb34-b24c-9f4061fcb982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem desc_c_naturality (F : J ⥤ PresheafedSpace.{_, _, v} C) (s : Cocone F)
    {U V : (Opens s.pt.carrier)ᵒᵖ} (i : U ⟶ V) :
    s.pt.presheaf.map i ≫ descCApp F s V =
      descCApp F s U ≫
        (colimit.desc (F ⋙ forget C) ((forget C).mapCocone s) _* (colimitCocone F).pt.presheaf).map
          i := by
  dsimp [descCApp]
  refine limit_obj_ext (fun j => ?_)
  have w := Functor.congr_hom (congr_arg Opens.map
    (colimit.ι_desc ((PresheafedSpace.forget C).mapCocone s) (unop j))) i.unop
  simp only [Opens.map_comp_map] at w
  simp [congr_arg Quiver.Hom.op w]

/-- Auxiliary definition for `AlgebraicGeometry.PresheafedSpace.colimitCoconeIsColimit`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42fed88610f647a675a52b5f6b593a40d57270d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
