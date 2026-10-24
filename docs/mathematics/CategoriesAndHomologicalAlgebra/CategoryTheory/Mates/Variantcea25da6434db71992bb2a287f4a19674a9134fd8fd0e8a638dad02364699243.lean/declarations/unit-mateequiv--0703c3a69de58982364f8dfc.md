# unit_mateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8052ed77-429e-6792-7fa2-c1dd931dcd32",
  "kind": "theorem",
  "lexical_name": "unit_mateEquiv",
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
  "slug": "unit-mateequiv--0703c3a69de58982364f8dfc",
  "source": {
    "blob": "da90d0d1f1072d57bfe04696436bedad5b731736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0703c3a69de58982364f8dfc8f337ff9976aac59eb85f464e4b65bba4cdb958c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8052ed77-429e-6792-7fa2-c1dd931dcd32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_mateEquiv (α : TwoSquare G L₁ L₂ H) (c : C) :
    G.map (adj₁.unit.app c) ≫ (mateEquiv adj₁ adj₂ α).app _ =
      adj₂.unit.app _ ≫ R₂.map (α.app _) := by
  simp only [id_obj, comp_obj, mateEquiv, Equiv.coe_fn_mk, comp_app, rightUnitor_inv_app,
    Functor.whiskerLeft_app, associator_hom_app, associator_inv_app, Functor.whiskerRight_app,
    Functor.comp_map, leftUnitor_hom_app, comp_id, id_comp]
  rw [← adj₂.unit_naturality_assoc]
  slice_lhs 2 3 =>
    rw [← R₂.map_comp, ← Functor.comp_map G L₂, α.naturality]
  rw [R₂.map_comp]
  slice_lhs 3 4 =>
    rw [← R₂.map_comp, Functor.comp_map L₁ H, ← H.map_comp, left_triangle_components]
  simp only [comp_obj, map_id, comp_id]

/-- A component of a transposed version of the inverse mates correspondence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da90d0d1f1072d57bfe04696436bedad5b731736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
