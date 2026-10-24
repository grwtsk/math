# cechNerveEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ee50f18a89f6e80ace8175572087aeeb0ea298259b090ad31935a825fe699ef",
  "kind": "def",
  "lexical_name": "cechNerveEquiv",
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
  "slug": "cechnerveequiv--3b98bb065342f8ad6cc53473",
  "source": {
    "blob": "48dbc701c6bc806b8a5f50a247604d4ec5510140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b98bb065342f8ad6cc53473152fffc5abf693f3777f4fc6d8c51158b4713bc0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ee50f18a89f6e80ace8175572087aeeb0ea298259b090ad31935a825fe699ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cechNerveEquiv (X : SimplicialObject.Augmented C) (F : Arrow C) :
    (Augmented.toArrow.obj X ⟶ F) ≃ (X ⟶ F.augmentedCechNerve) where
  toFun := equivalenceLeftToRight _ _
  invFun := equivalenceRightToLeft _ _
  left_inv := by
    intro A
    ext
    · dsimp
      rw [WidePullback.lift_π]
      nth_rw 2 [← Category.id_comp A.left]
      congr 1
      convert X.left.map_id _
      rw [← op_id]
      congr 1
      ext ⟨a, ha⟩
      simp
    · rfl
  right_inv := by
    intro A
    ext x : 2
    · refine WidePullback.hom_ext _ _ _ (fun j => ?_) ?_
      · dsimp
        simp
        rfl
      · simpa using congr_app A.w.symm x
    · rfl

/-- The augmented Čech nerve construction is right adjoint to the `toArrow` functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dbc701c6bc806b8a5f50a247604d4ec5510140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
