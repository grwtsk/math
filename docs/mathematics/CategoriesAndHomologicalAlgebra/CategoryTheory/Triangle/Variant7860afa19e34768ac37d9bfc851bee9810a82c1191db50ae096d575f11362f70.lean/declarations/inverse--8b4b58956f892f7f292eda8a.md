# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7958358e22598c3d718a6264cd0879e63e4c3e03b5ff123e34fc59102fa464a",
  "kind": "def",
  "lexical_name": "inverse",
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
  "slug": "inverse--8b4b58956f892f7f292eda8a",
  "source": {
    "blob": "8dee9c67aabf6727a7ad944874e4a58e55f8ca88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variant7860afa19e34768ac37d9bfc851bee9810a82c1191db50ae096d575f11362f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b4b58956f892f7f292eda8ab8bb6075f63de0059167b76bfaa5496547693aca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variant7860afa19e34768ac37d9bfc851bee9810a82c1191db50ae096d575f11362f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7958358e22598c3d718a6264cd0879e63e4c3e03b5ff123e34fc59102fa464a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inverse : Triangle Cᵒᵖ ⥤ (Triangle C)ᵒᵖ where
  obj T := Opposite.op (Triangle.mk T.mor₂.unop T.mor₁.unop
      (((opShiftFunctorEquivalence C 1).unitIso.inv.app T.obj₁).unop ≫ T.mor₃.unop⟦(1 : ℤ)⟧'))
  map {T₁ T₂} φ := Quiver.Hom.op
    { hom₁ := φ.hom₃.unop
      hom₂ := φ.hom₂.unop
      hom₃ := φ.hom₁.unop
      comm₁ := Quiver.Hom.op_inj φ.comm₂.symm
      comm₂ := Quiver.Hom.op_inj φ.comm₁.symm
      comm₃ := Quiver.Hom.op_inj (by
        dsimp
        rw [assoc, ← opShiftFunctorEquivalence_unitIso_inv_naturality,
          ← op_comp_assoc, ← Functor.map_comp, ← unop_comp, ← φ.comm₃,
          unop_comp, Functor.map_comp, op_comp, assoc]) }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The unit isomorphism of the
equivalence `triangleOpEquivalence C : (Triangle C)ᵒᵖ ≌ Triangle Cᵒᵖ` . -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variant7860afa19e34768ac37d9bfc851bee9810a82c1191db50ae096d575f11362f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variant7860afa19e34768ac37d9bfc851bee9810a82c1191db50ae096d575f11362f70.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee9c67aabf6727a7ad944874e4a58e55f8ca88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
