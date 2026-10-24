# additiveObjIsoBiproduct_naturality'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a77d14ea5c8f7d49dfc10fd4287318f10059ea0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67386f0d-9658-dd12-f962-4c5b417ca821",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22ceb4f9-79e2-e58e-0860-a28c83e251d7",
  "kind": "theorem",
  "lexical_name": "additiveObjIsoBiproduct_naturality'",
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
  "slug": "additiveobjisobiproduct-naturality--080fd3ff71e4ddc6e068fe68",
  "source": {
    "blob": "9a77d14ea5c8f7d49dfc10fd4287318f10059ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 422,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080fd3ff71e4ddc6e068fe6849441bcc83926c0bf1a0130ddd8d065c4c53ef66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ceb4f9-79e2-e58e-0860-a28c83e251d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additiveObjIsoBiproduct_naturality' (F : Mat_ C ⥤ D) [Functor.Additive F] {M N : Mat_ C}
    (f : M ⟶ N) :
    (additiveObjIsoBiproduct F M).inv ≫ F.map f =
      biproduct.matrix (fun i j => F.map ((embedding C).map (f i j)) : _) ≫
        (additiveObjIsoBiproduct F N).inv :=
  by rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv, additiveObjIsoBiproduct_naturality]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.additive_obj_iso_biproduct_naturality' CategoryTheory.Mat_.additiveObjIsoBiproduct_naturality'

attribute [local simp] biproduct.lift_desc

/-- Any additive functor `C ⥤ D` to a category `D` with finite biproducts extends to
a functor `Mat_ C ⥤ D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a77d14ea5c8f7d49dfc10fd4287318f10059ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
