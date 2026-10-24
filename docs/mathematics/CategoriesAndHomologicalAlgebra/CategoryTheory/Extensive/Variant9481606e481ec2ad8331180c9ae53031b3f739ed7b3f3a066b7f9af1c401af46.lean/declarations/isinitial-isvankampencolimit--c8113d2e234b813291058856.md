# IsInitial.isVanKampenColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcae00af-a753-8639-645e-785138326fe9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08dd930c-4207-c9b9-d734-f1ca4c081081",
  "kind": "theorem",
  "lexical_name": "IsInitial.isVanKampenColimit",
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
  "slug": "isinitial-isvankampencolimit--c8113d2e234b813291058856",
  "source": {
    "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8113d2e234b813291058856d83ed1933ea0f819ed8938df4c27c18caec1b006",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08dd930c-4207-c9b9-d734-f1ca4c081081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInitial.isVanKampenColimit [HasStrictInitialObjects C] {X : C} (h : IsInitial X) :
    IsVanKampenColimit (asEmptyCocone X) := by
  intro F' c' α f hf hα
  have : F' = Functor.empty C := by apply Functor.hext <;> rintro ⟨⟨⟩⟩
  subst this
  haveI := h.isIso_to f
  refine' ⟨by rintro _ ⟨⟨⟩⟩,
    fun _ => ⟨IsColimit.ofIsoColimit h (Cocones.ext (asIso f).symm <| by rintro ⟨⟨⟩⟩)⟩⟩
#align category_theory.is_initial.is_van_kampen_colimit CategoryTheory.IsInitial.isVanKampenColimit

section Extensive

variable {X Y : C}

/-- A category is (finitary) extensive if it has finite coproducts,
and binary coproducts are van Kampen.

TODO: Show that this is iff all finite coproducts are van Kampen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4991374a771c850642dcbc1fdc2e28712742f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
