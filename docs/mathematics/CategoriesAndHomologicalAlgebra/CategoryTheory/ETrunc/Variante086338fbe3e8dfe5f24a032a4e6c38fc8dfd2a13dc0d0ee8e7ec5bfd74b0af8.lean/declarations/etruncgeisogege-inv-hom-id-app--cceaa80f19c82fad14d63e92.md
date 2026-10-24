# eTruncGEIsoGEGE_inv_hom_id_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16befd08-75b7-8d5d-22ca-bd090447b3fe",
  "kind": "lemma",
  "lexical_name": "eTruncGEIsoGEGE_inv_hom_id_app",
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
  "slug": "etruncgeisogege-inv-hom-id-app--cceaa80f19c82fad14d63e92",
  "source": {
    "blob": "06173d73f2e9657a48107e9e793a1847325624cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 385,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cceaa80f19c82fad14d63e92d58c06d295100700aa9d72216f9497c01475a0de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16befd08-75b7-8d5d-22ca-bd090447b3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eTruncGEIsoGEGE_inv_hom_id_app (X : C) :
    (t.eTruncGEIsoGEGE a b hab).inv.app X ≫ (t.eTruncGE.obj b).map ((t.eTruncGEπ a).app X) =
      𝟙 _ := by
  simpa using! (t.eTruncGEIsoGEGE a b hab).inv_hom_id_app X

end

/-- The natural transformation `t.eTruncLT.obj a ⋙ t.eTruncLT.obj b ⟶ t.eTruncLT.obj b`
for all `a` and `b` in `EInt`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06173d73f2e9657a48107e9e793a1847325624cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
