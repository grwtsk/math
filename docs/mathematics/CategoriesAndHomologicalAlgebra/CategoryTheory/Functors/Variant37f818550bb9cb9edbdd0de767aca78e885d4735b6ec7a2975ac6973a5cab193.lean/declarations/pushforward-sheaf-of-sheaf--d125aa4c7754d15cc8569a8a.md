# pushforward_sheaf_of_sheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17093c431f9b8ebbb2a2ed27dedac54b841b1f74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21974040-86dc-586b-8687-6204f11453d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:163c25d8-b3c6-0d76-265e-fb2e8b8c2b97",
  "kind": "theorem",
  "lexical_name": "pushforward_sheaf_of_sheaf",
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
  "slug": "pushforward-sheaf-of-sheaf--d125aa4c7754d15cc8569a8a",
  "source": {
    "blob": "17093c431f9b8ebbb2a2ed27dedac54b841b1f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d125aa4c7754d15cc8569a8a9e7d287b4f16cf7b6bddac4356ec0177ed6cbfda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163c25d8-b3c6-0d76-265e-fb2e8b8c2b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforward_sheaf_of_sheaf {F : X.Presheaf C} (h : F.IsSheaf) : (f _* F).IsSheaf := by
  rw [isSheaf_iff_isSheafPairwiseIntersections] at h ⊢
  exact SheafConditionPairwiseIntersections.pushforward_sheaf_of_sheaf f h
set_option linter.uppercaseLean3 false in
#align Top.sheaf.pushforward_sheaf_of_sheaf TopCat.Sheaf.pushforward_sheaf_of_sheaf

/-- The pushforward functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17093c431f9b8ebbb2a2ed27dedac54b841b1f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
