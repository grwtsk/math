# triangleω₁δObjIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bf7721ed2b4d60e074d578844caada0cb62533ccf7a174047170eb49bce0f41",
  "kind": "def",
  "lexical_name": "triangleω₁δObjIso",
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
  "slug": "triangle-objiso--ecf8e97e57a034897e632f19",
  "source": {
    "blob": "2a838e2f4532fce6d296362a8c987f9aa031b2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecf8e97e57a034897e632f191fd0ce18828544d9b621506c8748538b4b090245",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bf7721ed2b4d60e074d578844caada0cb62533ccf7a174047170eb49bce0f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def triangleω₁δObjIso (X : C) :
    (t.triangleω₁δ a b c hab hbc).obj X ≅
      (t.eTriangleLTGE.obj b).obj ((t.ω₁.obj (mk₁ (homOfLE (hab.trans hbc)))).obj X) := by
  refine Triangle.isoMk _ _ ((t.eTruncGE.obj a).mapIso ((t.eTruncLTLTIsoLT c b hbc).symm.app X) ≪≫
    (t.eTruncLTGEIsoGELT a b).symm.app _) (Iso.refl _) ((t.eTruncGEIsoGEGE a b hab).app _) ?_ ?_ ?_
  · dsimp
    simp only [triangleω₁δ_obj_mor₁, homOfLE_leOfHom, Category.comp_id, Category.assoc]
    rw [← cancel_epi ((t.eTruncGE.obj a).map ((t.eTruncLTLTIsoLT c b hbc).hom.app X)),
      ← Functor.map_comp_assoc, Iso.hom_inv_id_app, Functor.map_id, Category.id_comp,
      ← cancel_epi ((t.eTruncLTGEIsoGELT a b).hom.app ((t.eTruncLT.obj c).obj X)),
      Iso.hom_inv_id_app_assoc, eTruncLTLTIsoLT_hom, eTruncLTLTToLT_app,
      ← Functor.map_comp, eTruncLT_obj_map_eTruncLTι_app_eTruncLT_map_app]
    simp
  · dsimp
    simp only [triangleω₁δ_obj_mor₂, eTruncGEToGEGE_app, Category.id_comp,
      ← t.eTruncGEπ_app_eTruncGE_map_app (homOfLE hab), ← NatTrans.naturality,
      eTruncGE_obj_map_eTruncGEπ_app]
  · simp [← Functor.map_comp_assoc, ← Functor.map_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a838e2f4532fce6d296362a8c987f9aa031b2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
