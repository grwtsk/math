# abelianizeAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5119af052a2bb1592659a6ebeabffc122f4cc9c5c589acbc791e60ab3e0e21cc",
  "kind": "def",
  "lexical_name": "abelianizeAdj",
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
  "slug": "abelianizeadj--d40721889c758ff41e8cef7b",
  "source": {
    "blob": "77c55890f838f2175dab3e4270f17f3ccb499da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantc2b05d33c843e720a3a0e1eee6881dffb3dee6c322877cc12a6032deea6b51ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d40721889c758ff41e8cef7baa94d51db379a548591b90f26b042ded0fcdb5f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantc2b05d33c843e720a3a0e1eee6881dffb3dee6c322877cc12a6032deea6b51ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5119af052a2bb1592659a6ebeabffc122f4cc9c5c589acbc791e60ab3e0e21cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abelianizeAdj : abelianize ⊣ forget₂ CommGrpCat.{u} GrpCat.{u} :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ => ((ConcreteCategory.homEquiv (C := CommGrpCat)).trans
        Abelianization.lift.symm).trans
        (ConcreteCategory.homEquiv (C := GrpCat)).symm
      -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): used to be just `by intros; ext1; rfl`.
      homEquiv_naturality_left_symm := by
        intros
        ext
        simp +instances only
        apply Eq.symm
        apply Abelianization.lift_unique
        intros
        apply Abelianization.lift_apply_of }

end Abelianization

end GrpCat

/-- The functor taking a monoid to its subgroup of units. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantc2b05d33c843e720a3a0e1eee6881dffb3dee6c322877cc12a6032deea6b51ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantc2b05d33c843e720a3a0e1eee6881dffb3dee6c322877cc12a6032deea6b51ec.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c55890f838f2175dab3e4270f17f3ccb499da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
