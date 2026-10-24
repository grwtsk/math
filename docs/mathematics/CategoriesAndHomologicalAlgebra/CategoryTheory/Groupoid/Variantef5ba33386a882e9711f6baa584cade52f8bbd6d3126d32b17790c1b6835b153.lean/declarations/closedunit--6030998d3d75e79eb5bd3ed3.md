# closedUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23464a39214cc01ee81d24e66af9bfe0b8bbba7aaa03d8a2bf409be96915d913",
  "kind": "def",
  "lexical_name": "closedUnit",
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
  "slug": "closedunit--6030998d3d75e79eb5bd3ed3",
  "source": {
    "blob": "6d0409368df7d3346c8f86a9374914a1a448eacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6030998d3d75e79eb5bd3ed373e8ecada2bac370c903e14f76ea9a0ce9bedade",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23464a39214cc01ee81d24e66af9bfe0b8bbba7aaa03d8a2bf409be96915d913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedUnit (F : D ⥤ C) : 𝟭 (D ⥤ C) ⟶ tensorLeft F ⋙ closedIhom F where
  app G :=
  { app := fun X => (ihom.coev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [ihom.coev_naturality, closedIhom_obj_map, Monoidal.tensorObj_map]
      dsimp
      rw [coev_app_comp_pre_app_assoc, ← Functor.map_comp, tensorHom_def]
      simp }

set_option backward.defeqAttrib.useBackward true in
/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The counit for the adjunction `(tensorLeft F) ⊣ (ihom F)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0409368df7d3346c8f86a9374914a1a448eacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
