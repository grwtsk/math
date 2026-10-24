# isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2669446e887e7a8f3ba4a5ccf8601286a6bf461253104af2f71b8ed386a3f8ac",
  "kind": "def",
  "lexical_name": "isLimit",
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
  "slug": "islimit--7a61b95ef479ea62e4d8377c",
  "source": {
    "blob": "8be3da1e4100cae33a883aeb8fc565ec3029c0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 137,
    "path": "GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a61b95ef479ea62e4d8377c8c2f03be2189bdca5506b02998766c0af37c49ff",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2669446e887e7a8f3ba4a5ccf8601286a6bf461253104af2f71b8ed386a3f8ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimit {X : TopCat.{v}} [Preorder X] [Topology.IsUpperSet X]
    (F : X ⥤ C)
    (α : Type v) (Us : α → Opens X) :
    IsLimit (mapCone (principalsKanExtension F) (opensLeCoverCocone Us).op) where
  lift S := limit.lift _ (lowerCone Us S)
  fac := by
    rintro S ⟨V, i, hV⟩
    dsimp [forget, opensLeCoverCocone]
    ext ⟨_, x, f⟩
    simp only [comp_obj, StructuredArrow.proj_obj, Category.assoc, limit.lift_π, lowerCone_pt,
      lowerCone_π_app, const_obj_obj, projSup_obj, StructuredArrow.map_obj_right, op_obj,
      ObjectProperty.ι_obj, pointwiseRightKanExtension_obj]
    have e : principalOpen x ≤ V := f.unop.le
    let VV : (ObjectProperty.FullSubcategory fun V => ∃ i, V ≤ Us i) := ⟨V, i, hV⟩
    let xx : (ObjectProperty.FullSubcategory fun V => ∃ i, V ≤ Us i) :=
      ⟨principalOpen x, i, le_trans e hV⟩
    let ee : xx ⟶ VV := e.hom
    rw [← S.w ee.op, Category.assoc]
    congr 1
    simp only [comp_obj, op_obj, ObjectProperty.ι_obj, pointwiseRightKanExtension_obj,
      Functor.comp_map, op_map, Quiver.Hom.unop_op, ObjectProperty.ιOfLE_map,
      pointwiseRightKanExtension_map, limit.lift_π, xx, VV]
    congr
  uniq := by
    intro S m hm
    dsimp
    symm
    ext ⟨_, x, f⟩
    simp only [lowerCone_pt, comp_obj, limit.lift_π, lowerCone_π_app, const_obj_obj, projSup_obj,
      op_obj, ObjectProperty.ι_obj, pointwiseRightKanExtension_obj]
    specialize hm ⟨principalOpen x, ?_⟩
    · apply exists_le_of_le_sup
      exact f.unop.le
    · rw [← hm]
      simp only [mapCone_pt, Cocone.op_pt, pointwiseRightKanExtension_obj, principals_obj,
        const_obj_obj, comp_obj, op_obj, ObjectProperty.ι_obj, mapCone_π_app, Cocone.op_π,
        NatTrans.op_app, pointwiseRightKanExtension_map, Category.assoc, limit.lift_π]
      congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be3da1e4100cae33a883aeb8fc565ec3029c0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
