# Functor.final_of_isFiltered_of_pUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55480b35-df6d-3e19-b432-2581d1df4687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39e176a9-5bef-6109-137c-c8c44bacc4eb",
  "kind": "theorem",
  "lexical_name": "Functor.final_of_isFiltered_of_pUnit",
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
  "slug": "functor-final-of-isfiltered-of-punit--69c8138aa010781c801399c6",
  "source": {
    "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 348,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c8138aa010781c801399c6a6a6626a8d2a30812e178a99ffe4c0df803027e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39e176a9-5bef-6109-137c-c8c44bacc4eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.final_of_isFiltered_of_pUnit [IsFiltered C] (F : C ⥤ Discrete PUnit) :
    Final F := by
  refine final_of_exists_of_isFiltered F (fun _ => ?_) (fun {_} {c} _ _ => ?_)
  · use Classical.choice IsFiltered.nonempty
    exact ⟨Discrete.eqToHom (by simp)⟩
  · use c; use 𝟙 c
    apply Subsingleton.elim

/-- If `C` is cofiltered, then every functor `F : C ⥤ Discrete PUnit` is initial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc890983657a740e8a426453ff473cdca8c23e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
