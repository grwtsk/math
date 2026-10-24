# mappingConeHomOfDegreewiseSplitIso_inv_comp_triangle_mor₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:614ca036-eb8d-09ab-43fe-4f5cef9c3f10",
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
  "slug": "mappingconehomofdegreewisesplitiso-inv-comp-triangle-mor--25f2c60132f6d32bb7abbe58",
  "source": {
    "blob": "03c89d79c4fc78ae315ac252e66861dd21590a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f2c60132f6d32bb7abbe5897a2a583058e108cb8507f20774342fa3d37736b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:614ca036-eb8d-09ab-43fe-4f5cef9c3f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mappingConeHomOfDegreewiseSplitIso_inv_comp_triangle_mor₃ :
    (mappingConeHomOfDegreewiseSplitIso S σ).inv ≫
      (mappingCone.triangle (homOfDegreewiseSplit S σ)).mor₃ = -S.g⟦(1 : ℤ)⟧' := by
  ext n
  dsimp [mappingConeHomOfDegreewiseSplitXIso]
  simp only [Int.reduceNeg, id_comp, sub_comp, assoc, mappingCone.inl_v_triangle_mor₃_f,
    shiftFunctor_obj_X, shiftFunctorObjXIso, XIsoOfEq_rfl, Iso.refl_inv, comp_neg, comp_id,
    mappingCone.inr_f_triangle_mor₃_f, comp_zero, sub_zero]

/-- The canonical isomorphism of triangles
`(triangleOfDegreewiseSplit S σ).rotate.rotate ≅ mappingCone.triangle (homOfDegreewiseSplit S σ)`
when `S` is a degreewise split short exact sequence of cochain complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c89d79c4fc78ae315ac252e66861dd21590a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
