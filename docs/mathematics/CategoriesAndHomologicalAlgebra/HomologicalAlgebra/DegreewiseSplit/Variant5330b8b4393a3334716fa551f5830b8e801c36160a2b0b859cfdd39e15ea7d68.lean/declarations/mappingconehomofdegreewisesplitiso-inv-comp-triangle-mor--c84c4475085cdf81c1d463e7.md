# mappingConeHomOfDegreewiseSplitIso_inv_comp_triangle_mor₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:170d8a7d-f77d-36ca-75d9-9d21b99dd146",
  "kind": "lemma",
  "lexical_name": "mappingConeHomOfDegreewiseSplitIso_inv_comp_triangle_mor₃",
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
  "slug": "mappingconehomofdegreewisesplitiso-inv-comp-triangle-mor--c84c4475085cdf81c1d463e7",
  "source": {
    "blob": "c999bb1ed96d62db81c5951fada084cad9da630a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c84c4475085cdf81c1d463e7c8d56f43edac5d21df7fafc2052c262fdf40e3e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:170d8a7d-f77d-36ca-75d9-9d21b99dd146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mappingConeHomOfDegreewiseSplitIso_inv_comp_triangle_mor₃ :
    (mappingConeHomOfDegreewiseSplitIso S σ).inv ≫
      (mappingCone.triangle (homOfDegreewiseSplit S σ)).mor₃ = -S.g⟦(1 : ℤ)⟧' := by
  ext n
  dsimp [mappingConeHomOfDegreewiseSplitXIso]
  simp only [Int.reduceNeg, id_comp, sub_comp, assoc, mappingCone.inl_v_triangle_mor₃_f,
    shiftFunctorObjXIso, XIsoOfEq_rfl, Iso.refl_inv, comp_neg, comp_id,
    mappingCone.inr_f_triangle_mor₃_f, comp_zero, sub_zero]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The canonical isomorphism of triangles
`(triangleOfDegreewiseSplit S σ).rotate.rotate ≅ mappingCone.triangle (homOfDegreewiseSplit S σ)`
when `S` is a degreewise split short exact sequence of cochain complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5330b8b4393a3334716fa551f5830b8e801c36160a2b0b859cfdd39e15ea7d68.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c999bb1ed96d62db81c5951fada084cad9da630a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
