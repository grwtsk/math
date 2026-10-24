# preserves_lift_mapCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0517bf3e7d4bd30dc0a680c476e846096a01f14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4361b029-4de6-f068-cdad-c0b8997a0439",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e608ee8f-8946-d19b-0ab2-6a9324771da0",
  "kind": "theorem",
  "lexical_name": "preserves_lift_mapCone",
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
  "slug": "preserves-lift-mapcone--d79fad4a43ffe65210c7e57e",
  "source": {
    "blob": "f0517bf3e7d4bd30dc0a680c476e846096a01f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d79fad4a43ffe65210c7e57e3f3f76ea8090bdd4fce5d1b775344694afa4763f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e608ee8f-8946-d19b-0ab2-6a9324771da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preserves_lift_mapCone (c₁ c₂ : Cone F) (t : IsLimit c₁) :
    (isLimitOfPreserves G t).lift (G.mapCone c₂) = G.map (t.lift c₂) :=
  ((isLimitOfPreserves G t).uniq (G.mapCone c₂) _ (by simp [← G.map_comp])).symm

variable [HasLimit F]

/-- If `G` preserves limits, we have an isomorphism from the image of the limit of a functor `F`
to the limit of the functor `F ⋙ G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant34ac5d7d3b9dc47ff1d79bf08e33d78feedbe53be2154f09b07395b7fe1db786.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0517bf3e7d4bd30dc0a680c476e846096a01f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
