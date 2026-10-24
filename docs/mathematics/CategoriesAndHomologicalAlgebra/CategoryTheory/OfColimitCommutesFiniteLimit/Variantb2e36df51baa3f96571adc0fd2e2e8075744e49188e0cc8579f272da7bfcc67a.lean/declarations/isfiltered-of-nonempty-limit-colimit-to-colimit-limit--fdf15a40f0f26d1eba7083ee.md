# isFiltered_of_nonempty_limit_colimit_to_colimit_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64a0c5121aacf6c7b09468e8110eaf46e882d825",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65bc8a75-ac04-1003-484d-a2fbd3d7af71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:931a5c57-1451-3ea5-fe63-7b79a5035393",
  "kind": "theorem",
  "lexical_name": "isFiltered_of_nonempty_limit_colimit_to_colimit_limit",
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
  "slug": "isfiltered-of-nonempty-limit-colimit-to-colimit-limit--fdf15a40f0f26d1eba7083ee",
  "source": {
    "blob": "64a0c5121aacf6c7b09468e8110eaf46e882d825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfColimitCommutesFiniteLimit/Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdf15a40f0f26d1eba7083ee2af19e83aea2e5c343bf387b91e0714ed58fc977",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfColimitCommutesFiniteLimit/Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:931a5c57-1451-3ea5-fe63-7b79a5035393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_of_nonempty_limit_colimit_to_colimit_limit
    (h : ∀ {J : Type v} [SmallCategory J] [FinCategory J] (F : J ⥤ K ⥤ Type v),
      Nonempty (limit (colimit F.flip) ⟶ colimit (limit F))) : IsFiltered K := by
  refine IsFiltered.iff_nonempty_limit.2 (fun {J} _ _ F => ?_)
  suffices Nonempty (limit (colimit (F.op ⋙ coyoneda).flip)) by
    obtain ⟨X, y, -⟩ := Types.jointly_surjective' (this.map (h (F.op ⋙ coyoneda)).some).some
    exact ⟨X, ⟨(limitObjIsoLimitCompEvaluation (F.op ⋙ coyoneda) _).hom y⟩⟩
  let _ (j : Jᵒᵖ) : Unique ((colimit (F.op ⋙ coyoneda).flip).obj j) :=
    ((colimitObjIsoColimitCompEvaluation (F.op ⋙ coyoneda).flip _ ≪≫
      Coyoneda.colimitCoyonedaIso _)).toEquiv.unique
  exact ⟨Types.Limit.mk (colimit (F.op ⋙ coyoneda).flip) (fun j => default) (by subsingleton)⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfColimitCommutesFiniteLimit/Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfColimitCommutesFiniteLimit/Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a0c5121aacf6c7b09468e8110eaf46e882d825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
