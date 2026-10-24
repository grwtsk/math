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
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1aeba83-b503-c7b1-9e34-cac055c6bbb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d8b7a74-5841-ebd0-621c-154df638b71f",
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
  "slug": "pushforward-sheaf-of-sheaf--5fa6b0f1b091f1889f7ed120",
  "source": {
    "blob": "17093c431f9b8ebbb2a2ed27dedac54b841b1f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fa6b0f1b091f1889f7ed1208163882830ac56d1c10aace15c13ce40b596f4ed",
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

Occurrence: `result:4d8b7a74-5841-ebd0-621c-154df638b71f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforward_sheaf_of_sheaf {F : Presheaf C X} (h : F.IsSheafPairwiseIntersections) :
    (f _* F).IsSheafPairwiseIntersections := fun ι U => by
  convert h ((Opens.map f).obj ∘ U) using 2
  rw [← map_diagram]; rfl
  change HEq (Functor.mapCone F ((Opens.map f).mapCocone (Pairwise.cocone U)).op) _
  congr
  iterate 2 rw [map_diagram]
  apply mapCocone
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.pushforward_sheaf_of_sheaf TopCat.Presheaf.SheafConditionPairwiseIntersections.pushforward_sheaf_of_sheaf

end Presheaf.SheafConditionPairwiseIntersections

namespace Sheaf

open Presheaf

/-- The pushforward of a sheaf (by a continuous map) is a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant37f818550bb9cb9edbdd0de767aca78e885d4735b6ec7a2975ac6973a5cab193.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17093c431f9b8ebbb2a2ed27dedac54b841b1f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
