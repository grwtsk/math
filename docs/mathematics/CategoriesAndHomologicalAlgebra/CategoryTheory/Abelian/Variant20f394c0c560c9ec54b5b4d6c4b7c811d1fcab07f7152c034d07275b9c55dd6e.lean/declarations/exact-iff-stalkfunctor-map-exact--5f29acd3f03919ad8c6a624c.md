# exact_iff_stalkFunctor_map_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83b8ad93f8bceebd227b9507c76f63a9c56c3894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20f394c0c560c9ec54b5b4d6c4b7c811d1fcab07f7152c034d07275b9c55dd6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1baeab6-a499-28dd-1cd0-05ef0dcc1fcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10046567-2c26-299f-ee8e-8af3c0257118",
  "kind": "theorem",
  "lexical_name": "exact_iff_stalkFunctor_map_exact",
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
  "slug": "exact-iff-stalkfunctor-map-exact--5f29acd3f03919ad8c6a624c",
  "source": {
    "blob": "83b8ad93f8bceebd227b9507c76f63a9c56c3894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant20f394c0c560c9ec54b5b4d6c4b7c811d1fcab07f7152c034d07275b9c55dd6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f29acd3f03919ad8c6a624c4ff42276a2044199437a40d0e998769f584bd140",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant20f394c0c560c9ec54b5b4d6c4b7c811d1fcab07f7152c034d07275b9c55dd6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10046567-2c26-299f-ee8e-8af3c0257118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_iff_stalkFunctor_map_exact (S : ShortComplex (Sheaf C X)) :
    S.Exact ↔ ∀ x : X, (S.map (forget C X ⋙ stalkFunctor C x)).Exact := by
  constructor
  · intro h x
    have := (forget C X ⋙ stalkFunctor C x).exact_tfae.out 3 2
    exact this.mp inferInstance S h
  intro h
  simp_rw [ShortComplex.exact_iff_isZero_homology] at h
  rw [ShortComplex.exact_iff_isZero_homology, isZero_iff_stalkFunctor_obj_isZero S.homology]
  exact fun x => (h x).of_iso
    (ShortComplex.mapHomologyIso S (forget C X ⋙ stalkFunctor C x)).symm

end Sheaf

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant20f394c0c560c9ec54b5b4d6c4b7c811d1fcab07f7152c034d07275b9c55dd6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant20f394c0c560c9ec54b5b4d6c4b7c811d1fcab07f7152c034d07275b9c55dd6e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b8ad93f8bceebd227b9507c76f63a9c56c3894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
