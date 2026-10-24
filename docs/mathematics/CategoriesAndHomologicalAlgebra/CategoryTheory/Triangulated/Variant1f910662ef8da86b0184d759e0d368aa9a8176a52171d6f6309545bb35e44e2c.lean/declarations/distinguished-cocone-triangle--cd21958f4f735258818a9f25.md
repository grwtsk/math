# distinguished_cocone_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8adcb472-7894-2d6b-a4fc-d707500e3945",
  "kind": "lemma",
  "lexical_name": "distinguished_cocone_triangle",
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
  "slug": "distinguished-cocone-triangle--cd21958f4f735258818a9f25",
  "source": {
    "blob": "a997aef3c73b4b8efaf449e1e1ca43689506b55c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd21958f4f735258818a9f2578aae8409d522b5637cb719b3fc7744a818dac3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8adcb472-7894-2d6b-a4fc-d707500e3945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma distinguished_cocone_triangle {X Y : D} (f : X ⟶ Y) :
    ∃ (Z : D) (g : Y ⟶ Z) (h : Z ⟶ X⟦(1 : ℤ)⟧),
      Triangle.mk f g h ∈ L.essImageDistTriang := by
  have := essSurj_mapArrow L W
  obtain ⟨φ, ⟨e⟩⟩ : ∃ (φ : Arrow C), Nonempty (L.mapArrow.obj φ ≅ Arrow.mk f) :=
    ⟨_, ⟨Functor.objObjPreimageIso _ _⟩⟩
  obtain ⟨Z, g, h, H⟩ := Pretriangulated.distinguished_cocone_triangle φ.hom
  refine ⟨L.obj Z, e.inv.right ≫ L.map g,
    L.map h ≫ (L.commShiftIso (1 : ℤ)).hom.app _ ≫ e.hom.left⟦(1 : ℤ)⟧', _, ?_, H⟩
  refine Triangle.isoMk _ _ (Arrow.leftFunc.mapIso e.symm) (Arrow.rightFunc.mapIso e.symm)
    (Iso.refl _) e.inv.w.symm (by simp) ?_
  dsimp
  simp only [assoc, id_comp, ← Functor.map_comp, ← Arrow.comp_left, e.hom_inv_id, Arrow.id_left,
    Functor.mapArrow_obj, Arrow.mk_left, Functor.map_id, comp_id]

section
variable [W.IsCompatibleWithTriangulation]

set_option backward.defeqAttrib.useBackward true in
include W in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a997aef3c73b4b8efaf449e1e1ca43689506b55c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
