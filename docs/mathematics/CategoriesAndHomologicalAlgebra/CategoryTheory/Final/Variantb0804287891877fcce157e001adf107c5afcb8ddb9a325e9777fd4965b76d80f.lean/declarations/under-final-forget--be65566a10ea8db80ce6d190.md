# Under.final_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dee0f88c203e4c6b8267ab7a0b9a3fe7705f3cd990166bfb1acaaf91b3fbf323",
  "kind": "instance",
  "lexical_name": "Under.final_forget",
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
  "slug": "under-final-forget--be65566a10ea8db80ce6d190",
  "source": {
    "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be65566a10ea8db80ce6d1901bb0bfc90dd8cc60c2a695c2d30021b7b377de5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dee0f88c203e4c6b8267ab7a0b9a3fe7705f3cd990166bfb1acaaf91b3fbf323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Under.final_forget [IsFilteredOrEmpty C] (c : C) : Final (Under.forget c) :=
  final_of_exists_of_isFiltered _
    (fun c' => ⟨mk (IsFiltered.leftToMax c c'), ⟨IsFiltered.rightToMax c c'⟩⟩)
    (fun {_} {x} s s' => by
      use mk (x.hom ≫ IsFiltered.coeqHom s s')
      use homMk (IsFiltered.coeqHom s s') (by simp)
      simp only [forget_obj, mk_right, forget_map, homMk_right]
      rw [IsFiltered.coeq_condition])

set_option backward.defeqAttrib.useBackward true in
/-- The forgetful functor of the over category on any cofiltered or empty category is initial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc890983657a740e8a426453ff473cdca8c23e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
