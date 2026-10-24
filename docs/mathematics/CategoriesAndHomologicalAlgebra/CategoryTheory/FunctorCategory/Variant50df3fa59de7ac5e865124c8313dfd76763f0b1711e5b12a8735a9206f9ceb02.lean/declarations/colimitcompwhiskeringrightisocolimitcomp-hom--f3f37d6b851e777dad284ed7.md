# ι_colimitCompWhiskeringRightIsoColimitComp_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3524129744fa10d6a589263186873ca93f0f9a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df5dc7a7-84f0-aec6-959e-33f563d1eec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c295b484-dffe-6a8f-0651-f57f624a1bf8",
  "kind": "theorem",
  "lexical_name": "ι_colimitCompWhiskeringRightIsoColimitComp_hom",
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
  "slug": "colimitcompwhiskeringrightisocolimitcomp-hom--f3f37d6b851e777dad284ed7",
  "source": {
    "blob": "3524129744fa10d6a589263186873ca93f0f9a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f37d6b851e777dad284ed76a796be14c70eb6734caac5f111d09061723e30f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c295b484-dffe-6a8f-0651-f57f624a1bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_colimitCompWhiskeringRightIsoColimitComp_hom {C : Type*} [Category C] {D : Type*}
    [Category D] {E : Type*} [Category E] {J : Type*} [Category J]
    [HasColimitsOfShape J D] (F : D ⥤ E) [PreservesColimitsOfShape J F] (G : J ⥤ C ⥤ D) (j : J) :
    colimit.ι (G ⋙ (whiskeringRight _ _ _).obj F) j ≫
      (colimitCompWhiskeringRightIsoColimitComp F G).hom = whiskerRight (colimit.ι G j) F := by
  simp [colimitCompWhiskeringRightIsoColimitComp]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3524129744fa10d6a589263186873ca93f0f9a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
