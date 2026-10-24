# cechNerveEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc57a244611345901160bdffa61fde4d74c3cec9fb04d31303c46280dfd8def6",
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
  "slug": "cechnerveequiv--587b2e46a539cbd019961dc5",
  "source": {
    "blob": "8545d54209844596b9d8252ef425254a2660476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:587b2e46a539cbd019961dc5942e18c521ba3ab097516eb05ec3243c6ccf5bba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc57a244611345901160bdffa61fde4d74c3cec9fb04d31303c46280dfd8def6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–178.

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
      erw [WidePullback.lift_π]
      nth_rw 2 [← Category.id_comp A.left]
      congr 1
      convert X.left.map_id _
      rw [← op_id]
      congr 1
      ext ⟨a, ha⟩
      change a < 1 at ha
      change 0 = a
      linarith
    · rfl
  right_inv := by
    intro A
    ext x : 2
    · refine' WidePullback.hom_ext _ _ _ (fun j => _) _
      · dsimp
        simp
        rfl
      · simpa using congr_app A.w.symm x
    · rfl
#align category_theory.simplicial_object.cech_nerve_equiv CategoryTheory.SimplicialObject.cechNerveEquiv

/-- The augmented Čech nerve construction is right adjoint to the `toArrow` functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8545d54209844596b9d8252ef425254a2660476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
