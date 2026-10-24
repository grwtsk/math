# toOver_comp_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef93c70240e040ad282cc913a68c97c98ca173d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f71c1f2-1962-7f76-1e1e-6a9f158f42bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad251b2e-2dfb-3361-1667-b1c40756c0e0",
  "kind": "lemma",
  "lexical_name": "toOver_comp_forget",
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
  "slug": "toover-comp-forget--76833c80e9b27c8876388d94",
  "source": {
    "blob": "ef93c70240e040ad282cc913a68c97c98ca173d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 868,
    "line": 861,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76833c80e9b27c8876388d94aadf77d329958683ac8d1fc549e59d3782c1ab7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad251b2e-2dfb-3361-1667-b1c40756c0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toOver_comp_forget (F : S ⥤ T) (X : T) (f : (Y : S) → F.obj Y ⟶ X)
    (h : ∀ {Y Z : S} (g : Y ⟶ Z), F.map g ≫ f Z = f Y) : F.toOver X f h ⋙ Over.forget _ = F :=
  rfl

/-- Given `X : T`, to upgrade a functor `F : S ⥤ T` to a functor `S ⥤ Under X`, it suffices to
    provide maps `X ⟶ F.obj Y` for all `Y` making the obvious triangles involving all `F.map g`
    commute. -/
@[simps! obj_right map_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef93c70240e040ad282cc913a68c97c98ca173d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
