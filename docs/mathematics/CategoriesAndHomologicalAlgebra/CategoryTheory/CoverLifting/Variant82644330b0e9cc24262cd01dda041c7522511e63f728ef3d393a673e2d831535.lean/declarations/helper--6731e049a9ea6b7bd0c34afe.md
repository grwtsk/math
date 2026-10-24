# helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af7d00ca-a96c-5d50-d35d-819c11f66eda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7911db48-6072-e619-d128-7a76436bb948",
  "kind": "theorem",
  "lexical_name": "helper",
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
  "slug": "helper--6731e049a9ea6b7bd0c34afe",
  "source": {
    "blob": "c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6731e049a9ea6b7bd0c34afe26a40ffe168a7adbde612ad46370e942f3c64384",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7911db48-6072-e619-d128-7a76436bb948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helper {V} (f : V ⟶ U) (y : X ⟶ ((ran G.op).obj ℱ.val).obj (op V)) (W)
    (H : ∀ {V'} {fV : G.obj V' ⟶ V} (hV), y ≫ ((ran G.op).obj ℱ.val).map fV.op = x (fV ≫ f) hV) :
    y ≫ limit.π (Ran.diagram G.op ℱ.val (op V)) W =
      (gluedLimitCone hu ℱ hS hx).π.app ((StructuredArrow.map f.op).obj W) := by
  dsimp only [gluedLimitCone_π_app]
  apply getSection_is_unique hu ℱ hS hx ((StructuredArrow.map f.op).obj W)
  intro V' fV' hV'
  dsimp only [Ran.adjunction, Ran.equiv, pulledbackFamily_apply]
  erw [Adjunction.adjunctionOfEquivRight_counit_app]
  have :
    y ≫ ((ran G.op).obj ℱ.val).map (G.map fV' ≫ W.hom.unop).op =
      x (G.map fV' ≫ W.hom.unop ≫ f) (by simpa only using hV') := by
    convert H (show S ((G.map fV' ≫ W.hom.unop) ≫ f) by simpa only [Category.assoc] using hV')
      using 2
    simp only [Category.assoc]
  simp only [Quiver.Hom.unop_op, Equiv.symm_symm, StructuredArrow.map_obj_hom, unop_comp,
    Equiv.coe_fn_mk, Functor.comp_map, coyoneda_obj_map, Category.assoc, ← this, op_comp,
    ran_obj_map, NatTrans.id_app]
  erw [Category.id_comp, limit.pre_π]
  congr
  convert limit.w (Ran.diagram G.op ℱ.val (op V)) (StructuredArrow.homMk' W fV'.op)
  rw [StructuredArrow.map_mk]
  erw [Category.comp_id]
  simp only [Quiver.Hom.unop_op, Functor.op_map, Quiver.Hom.op_unop]
set_option linter.uppercaseLean3 false in
#align category_theory.Ran_is_sheaf_of_cover_lifting.helper CategoryTheory.RanIsSheafOfCoverLifting.helper

/-- Verify that the `glued_section` is an amalgamation of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant82644330b0e9cc24262cd01dda041c7522511e63f728ef3d393a673e2d831535.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a1bcc0622e29c7d2f80c77563d756e8d41d1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
