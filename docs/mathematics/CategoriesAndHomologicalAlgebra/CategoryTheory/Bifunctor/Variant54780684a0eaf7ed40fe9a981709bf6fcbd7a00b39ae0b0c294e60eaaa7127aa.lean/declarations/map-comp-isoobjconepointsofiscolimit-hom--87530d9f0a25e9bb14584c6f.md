# map_ι_comp_isoObjConePointsOfIsColimit_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:248b5b20-bd2f-e22d-e530-abf99d011e65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c8c5f3b-5ece-b865-8f50-b0c8ad00cde0",
  "kind": "lemma",
  "lexical_name": "map_ι_comp_isoObjConePointsOfIsColimit_hom",
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
  "slug": "map-comp-isoobjconepointsofiscolimit-hom--87530d9f0a25e9bb14584c6f",
  "source": {
    "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87530d9f0a25e9bb14584c6fbe410e9ad10153f09dceb7315abb7476b17115e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8c5f3b-5ece-b865-8f50-b0c8ad00cde0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_ι_comp_isoObjConePointsOfIsColimit_hom (j : J₁ × J₂) :
    (G.map (c₁.ι.app j.1)).app (K₂.obj j.2) ≫ (G.obj c₁.pt).map (c₂.ι.app j.2) ≫
      (isoObjCoconePointsOfIsColimit G hc₁ hc₂ hc₃).hom =
    c₃.ι.app j := by
  rw [← Category.assoc, ← Iso.eq_comp_inv]
  simp

end

section

variable (K₁ K₂) [HasColimit K₁] [HasColimit K₂]

/-- Extract the isomorphism between
`colim (uncurry.obj (whiskeringLeft₂ C|>.obj K₁|>.obj K₂|>.obj G))` and
`(G.obj (colim K₁)).obj (colim K₂)` from a `PreservesColimit₂` instance, provided the relevant
colimits exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ba882132a202a7541fc1e8d53df7366fb4de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
