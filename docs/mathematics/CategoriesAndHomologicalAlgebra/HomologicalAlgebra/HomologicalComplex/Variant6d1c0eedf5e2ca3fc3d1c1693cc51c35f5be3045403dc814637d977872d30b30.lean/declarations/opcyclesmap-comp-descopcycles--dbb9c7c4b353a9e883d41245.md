# opcyclesMap_comp_descOpcycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27731c25d8f93ed52053070198f138d58bf08312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d1c0eedf5e2ca3fc3d1c1693cc51c35f5be3045403dc814637d977872d30b30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbeabcc9-d32f-1a59-57cf-9f30fe2f8c9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b62b9258-35cd-241c-c9bc-5cb09ec637df",
  "kind": "lemma",
  "lexical_name": "opcyclesMap_comp_descOpcycles",
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
  "slug": "opcyclesmap-comp-descopcycles--dbb9c7c4b353a9e883d41245",
  "source": {
    "blob": "27731c25d8f93ed52053070198f138d58bf08312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 469,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6d1c0eedf5e2ca3fc3d1c1693cc51c35f5be3045403dc814637d977872d30b30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb9c7c4b353a9e883d41245ce557d803b7352fd3bb632e699c3086dfb09a1f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6d1c0eedf5e2ca3fc3d1c1693cc51c35f5be3045403dc814637d977872d30b30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b62b9258-35cd-241c-c9bc-5cb09ec637df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesMap_comp_descOpcycles {A : C} (k : L.X i ⟶ A) (j : ι) (hj : c.prev i = j)
    (hk : L.d j i ≫ k = 0) (φ : K ⟶ L) :
    opcyclesMap φ i ≫ L.descOpcycles k j hj hk = K.descOpcycles (φ.f i ≫ k) j hj
      (by rw [← φ.comm_assoc, hk, comp_zero]) := by
  simp only [← cancel_epi (K.pOpcycles i), p_opcyclesMap_assoc, p_descOpcycles]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6d1c0eedf5e2ca3fc3d1c1693cc51c35f5be3045403dc814637d977872d30b30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6d1c0eedf5e2ca3fc3d1c1693cc51c35f5be3045403dc814637d977872d30b30.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27731c25d8f93ed52053070198f138d58bf08312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
