# tensorCotangentSpaceOfFormallyEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8afdb8b391a7823e69cb1609e02b38a7c960144007d6ce346c406179cef2f25",
  "kind": "def",
  "lexical_name": "tensorCotangentSpaceOfFormallyEtale",
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
  "slug": "tensorcotangentspaceofformallyetale--c1999ce74436acb2d82842d1",
  "source": {
    "blob": "d18ddd3379148e9a1f7571baceac8cb5e73722dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 105,
    "path": "GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1999ce74436acb2d82842d195b0b9225ee72e025dbced3d7e788ee9f802bd84",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8afdb8b391a7823e69cb1609e02b38a7c960144007d6ce346c406179cef2f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorCotangentSpaceOfFormallyEtale
    (H : f.toRingHom.FormallyEtale) :
    T ⊗[S] P.CotangentSpace ≃ₗ[T] Q.CotangentSpace :=
  letI := f.toRingHom.toAlgebra
  haveI : IsScalarTower R P.Ring Q.Ring :=
    .of_algebraMap_eq fun r ↦ (f.toRingHom_algebraMap r).symm
  letI := ((algebraMap S T).comp (algebraMap P.Ring S)).toAlgebra
  haveI : IsScalarTower P.Ring S T := .of_algebraMap_eq' rfl
  haveI : IsScalarTower P.Ring Q.Ring T :=
    .of_algebraMap_eq fun r ↦ (f.algebraMap_toRingHom r).symm
  haveI : FormallyEtale P.Ring Q.Ring := ‹_›
  { __ := (CotangentSpace.map f).liftBaseChange T
    invFun := LinearMap.liftBaseChange T (by
      refine LinearMap.liftBaseChange _ ?_ ∘ₗ
        (tensorKaehlerEquivOfFormallyEtale R P.Ring Q.Ring).symm.toLinearMap
      exact (TensorProduct.mk _ _ _ 1).restrictScalars P.Ring ∘ₗ
        (TensorProduct.mk _ _ _ 1).restrictScalars P.Ring)
    left_inv x := by
      change (LinearMap.liftBaseChange _ _ ∘ₗ LinearMap.liftBaseChange _ _) x =
        LinearMap.id (R := T) x
      congr 1
      ext : 4
      refine Derivation.liftKaehlerDifferential_unique
        (R := R) (S := P.Ring) (M := T ⊗[S] P.CotangentSpace) _ _ ?_
      ext a
      have : (tensorKaehlerEquivOfFormallyEtale R P.Ring Q.Ring).symm
          ((D R Q.Ring) (f.toRingHom a)) = 1 ⊗ₜ D _ _ a :=
        tensorKaehlerEquivOfFormallyEtale_symm_D_algebraMap R P.Ring Q.Ring a
      simp [this]
    right_inv x := by
      change (LinearMap.liftBaseChange _ _ ∘ₗ LinearMap.liftBaseChange _ _) x =
        LinearMap.id (R := T) x
      congr 1
      ext a
      dsimp
      obtain ⟨x, hx⟩ := (tensorKaehlerEquivOfFormallyEtale R P.Ring _).surjective (D R Q.Ring a)
      simp only [one_smul, ← hx, LinearEquiv.symm_apply_apply]
      change (((CotangentSpace.map f).liftBaseChange T).restrictScalars Q.Ring ∘ₗ
        LinearMap.liftBaseChange _ _) x = ((TensorProduct.mk _ _ _ 1) ∘ₗ
          (tensorKaehlerEquivOfFormallyEtale R P.Ring Q.Ring).toLinearMap) x
      congr 1
      ext a
      simp; rfl }

/-- (Implementation)
If `J ≃ Q ⊗ₚ I` (e.g. when `T = Q ⊗ₚ S` and `P → Q` is flat), then `T ⊗ₛ I/I² ≃ J/J²`.
This is the inverse. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18ddd3379148e9a1f7571baceac8cb5e73722dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
