# shiftEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4daa6f01a9f33985da7f6ada1c4eac6a3a6cb26038265a8aac139636730187",
  "kind": "def",
  "lexical_name": "shiftEquiv'",
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
  "slug": "shiftequiv--8bec0cada156d6aee636f474",
  "source": {
    "blob": "f312e72830ae8491b1e8be035a0fc1bb1c971d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 397,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bec0cada156d6aee636f47483e4d509493af4beee05f884ec46bd0cabec8dc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4daa6f01a9f33985da7f6ada1c4eac6a3a6cb26038265a8aac139636730187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftEquiv' (i j : A) (h : i + j = 0) : C ≌ C where
  functor := shiftFunctor C i
  inverse := shiftFunctor C j
  unitIso := (shiftFunctorCompIsoId C i j h).symm
  counitIso := shiftFunctorCompIsoId C j i
    (by rw [← add_left_inj j, add_assoc, h, zero_add, add_zero])
  functor_unitIso_comp X := by
    convert (equivOfTensorIsoUnit (shiftMonoidalFunctor C A) ⟨i⟩ ⟨j⟩ (Discrete.eqToIso h)
      (Discrete.eqToIso (by dsimp; rw [← add_left_inj j, add_assoc, h, zero_add, add_zero]))
      (Subsingleton.elim _ _)).functor_unitIso_comp X
    all_goals
      ext X
      dsimp [shiftFunctorCompIsoId, unitOfTensorIsoUnit,
        shiftFunctorAdd']
      simp only [Category.assoc, eqToHom_map]
      rfl

/-- Shifting by `n` and shifting by `-n` forms an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f312e72830ae8491b1e8be035a0fc1bb1c971d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
