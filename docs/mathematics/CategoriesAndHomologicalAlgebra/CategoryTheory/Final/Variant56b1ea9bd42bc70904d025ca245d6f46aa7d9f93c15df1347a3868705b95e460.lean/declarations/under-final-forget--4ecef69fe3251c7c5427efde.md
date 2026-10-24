# Under.final_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e048b3202db8fa21796752dc5731988276e34fb8e963e96dc58bbf419cf527",
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
  "slug": "under-final-forget--4ecef69fe3251c7c5427efde",
  "source": {
    "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ecef69fe3251c7c5427efdeb835c075ed1dd3aca0943435632f5339956ce485",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e048b3202db8fa21796752dc5731988276e34fb8e963e96dc58bbf419cf527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Under.final_forget [IsFilteredOrEmpty C] (c : C) : Final (Under.forget c) :=
  final_of_exists_of_isFiltered _
    (fun c' => ⟨mk (IsFiltered.leftToMax c c'), ⟨IsFiltered.rightToMax c c'⟩⟩)
    (fun {_} {x} s s' => by
      use mk (x.hom ≫ IsFiltered.coeqHom s s')
      use homMk (IsFiltered.coeqHom s s') (by simp)
      simp only [forget_obj, id_obj, mk_right, const_obj_obj, forget_map, homMk_right]
      rw [IsFiltered.coeq_condition])

/-- The forgetful functor of the over category on any cofiltered or empty category is initial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
