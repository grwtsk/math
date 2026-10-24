# mul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16a0c636-af8d-8792-e594-01f43c33a2f2",
  "kind": "theorem",
  "lexical_name": "mul_comm",
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
  "slug": "mul-comm--c2c66a8fa8ced671939f3a92",
  "source": {
    "blob": "88d33a124bb93bc4db6795b7d32eede81e6abef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 840,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c66a8fa8ced671939f3a920cd2174f9224010ac8be07c81b034603c7e19c81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a0c636-af8d-8792-e594-01f43c33a2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_comm (X : C) [Mon_Class X] [IsCommMon X] : (β_ X X).hom ≫ μ = μ := mul_comm'

end IsCommMon

end

/-!
Projects:
* Check that `Mon_ MonCat ≌ CommMonCat`, via the Eckmann-Hilton argument.
  (You'll have to hook up the cartesian monoidal structure on `MonCat` first,
  available in https://github.com/leanprover-community/mathlib3/pull/3463)
* More generally, check that `Mon_ (Mon_ C) ≌ CommMon_ C` when `C` is braided.
* Check that `Mon_ TopCat ≌ [bundled topological monoids]`.
* Check that `Mon_ AddCommGrp ≌ RingCat`.
  (We've already got `Mon_ (ModuleCat R) ≌ AlgCat R`,
  in `Mathlib/CategoryTheory/Monoidal/Internal/Module.lean`.)
* Can you transport this monoidal structure to `RingCat` or `AlgCat R`?
  How does it compare to the "native" one?
* Show that when `F` is a lax braided functor `C ⥤ D`, the functor `map_Mon F : Mon_ C ⥤ Mon_ D`
  is lax monoidal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d33a124bb93bc4db6795b7d32eede81e6abef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
