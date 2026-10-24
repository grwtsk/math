# Monoidal.prod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5f8feae43b4d13e90afbc483d9929c9eae1824697d7ff8913d6ed37d6a5cd5c",
  "kind": "instance",
  "lexical_name": "Monoidal.prod'",
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
  "slug": "monoidal-prod--d16100ccd700989bd34fc228",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 937,
    "line": 894,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d16100ccd700989bd34fc228a67a0f65bc0ec8500fcb100f1ce2b8702a73e0b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5f8feae43b4d13e90afbc483d9929c9eae1824697d7ff8913d6ed37d6a5cd5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–937.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Monoidal.prod' [F.Monoidal] [G.Monoidal] :
    (prod' F G).Monoidal where
  -- automation should work, but it is terribly slow
  ε_η := by
    ext
    · simp only [CategoryTheory.prod_comp_fst, prod'_ε_fst, prod'_η_fst, ε_η,
        prodMonoidal_tensorUnit, prod_id]
    · simp only [CategoryTheory.prod_comp_snd, prod'_ε_snd, prod'_η_snd, ε_η,
        prodMonoidal_tensorUnit, prod_id]
  η_ε := by
    ext
    · simp only [CategoryTheory.prod_comp_fst, prod'_ε_fst, prod'_η_fst, η_ε,
        prod_id, prod'_obj]
    · simp only [CategoryTheory.prod_comp_snd, prod'_ε_snd, prod'_η_snd, η_ε,
        prod_id, prod'_obj]
  μ_δ _ _ := by
    ext
    · simp only [CategoryTheory.prod_comp_fst, prod'_μ_fst, prod'_δ_fst, μ_δ,
        prod'_obj, prodMonoidal_tensorObj, prod_id]
    · simp only [CategoryTheory.prod_comp_snd, prod'_μ_snd, prod'_δ_snd, μ_δ,
        prod'_obj, prodMonoidal_tensorObj, prod_id]
  δ_μ _ _ := by
    ext
    · simp only [CategoryTheory.prod_comp_fst, prod'_μ_fst, prod'_δ_fst, δ_μ,
        prod'_obj, prod_id]
    · simp only [CategoryTheory.prod_comp_snd, prod'_μ_snd, prod'_δ_snd, δ_μ,
        prod'_obj, prod_id]

end Prod'

end Functor

namespace Adjunction

variable {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)

open Functor.OplaxMonoidal Functor.LaxMonoidal

section LaxMonoidal
variable [F.OplaxMonoidal]

set_option backward.defeqAttrib.useBackward true in
/-- The right adjoint of an oplax monoidal functor is lax monoidal. -/
@[simps -isSimp, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
